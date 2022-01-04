import collections.abc
from pathlib import Path

from tqdm import tqdm


def make_trie(words):
    words = [word for word in words]
    trie = dict()
    for word in tqdm(words):
        trie_for_word = _make_trie_from_word(word)
        trie = _deep_update(trie, trie_for_word)
    return trie


def _make_trie_from_word(word):
    if len(word) == 1:
        return {word[0]: {"_": 1}}
    else:
        return {word[0]: _make_trie_from_word(word[1:])}


def _deep_update(original, new):
    for key, value in new.items():
        if isinstance(value, collections.abc.Mapping):
            original[key] = _deep_update(original.get(key, {}), value)
        else:
            original[key] = value
    return original


def _test_trie_size(trie):
    val = 0
    with open("trie_gen_temp_file.txt", "w") as temp_file:
        json.dump(trie, temp_file)
        temp_file.seek(0, os.SEEK_END)
        val = file.tell()
        
    os.remove("trie_gen_temp_file.txt")
    return val
    
def _output_subfiles(letter, letter_trie, file):

    max_size = (50 * 1028) #Bytes

    for subletter in "oaeiu":
        with open("output/result_"+letter+subletter+".json", "w") as subfile:
            json.dump(letter_trie[subletter], subfile)
        
        letter_trie.pop(subletter, {})
        file.truncate(0)
        file.seek(0)
        json.dump(letter_trie, file)
        
        #test size against threshold
        file.seek(0, os.SEEK_END)
        if (file.tell() < max_size): 
            break
    

if __name__ == "__main__":

    import json
    import os
    
    words = []

    inputs = os.scandir(Path("input"))
    for source in inputs:
        text = Path(source).read_text(errors="ignore")
        text_lower = text.lower()
        words += text_lower.split("\n")
    
    words = list(dict.fromkeys(words))
    words.sort()
    
    for word in list(words):
        if (len(word) < 2) or (len(word) > 16):
            words.remove(word)
    
    with open("output/result_full.txt", "w") as file:
        for word in words:
            file.write(word + "\n")
       
    trie = make_trie(words)


    with open("output/result_full.json", "w") as file:
        json.dump(trie, file)
    
    max_size = (50 * 1028) #Bytes
    
    for letter in "abcdefghijklmnopqrstuvwxyz":
        with open("output/result_"+letter+".json", "w") as file:
            
            json.dump(trie[letter], file)
            #test size against threshold
            file.seek(0, os.SEEK_END)
            #if (file.tell() > max_size):
                #_output_subfiles(letter, trie[letter], file)
    
     
    print("converting to string")
    trietext = Path("output/result_full.json").read_text(errors="ignore")
        
    with open("output/result_compiled.gml", "w") as out:
        
        backtracks = 0
        last_letter = ''
        output_string = ""
        
        for char in trietext:
            if (ord(char) >= ord('a') and ord(char) <= ord('z')):
                if (backtracks > 9):
                    output_string += "9"
                    output_string += str(backtracks - 9)
                elif (backtracks > 0):
                    output_string += str(backtracks)
                
                output_string += char
                last_letter = char
                backtracks = 0
                
            elif (char == "_"):
                
                output_string = output_string[:-1]
                output_string += last_letter.upper()
                last_letter = ''
                
            elif (char == "}"):
                backtracks = backtracks + 1
                
        out.write(output_string)
 
    
    input("Press Enter to close.")
