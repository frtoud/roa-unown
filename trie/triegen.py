import collections.abc
from pathlib import Path

from tqdm import tqdm


def make_trie(words):
    words = [word for word in words]
    trie = dict()
    for word in tqdm(words):
        if len(word) < 16:
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

    
def _output_subfiles(letter, letter_trie, file):

    max_size = (50 * 1028) #Bytes

    for subletter in "aeiou":
        with open("output/result_"+letter+subletter+".json", "w") as subfile:
            json.dump(trie[letter][subletter], subfile)
        
        letter_trie.pop(subletter, {})
        file.truncate(0)
        file.seek(0)
        json.dump(letter_trie, file)
        
        #test size against threshold
        file.seek(0, os.SEEK_END)
        if (file.tell() < max_size): 
            break
    

if __name__ == "__main__":
    text = Path("words_popular.txt").read_text(errors="ignore")
    words = text.split("\n")
    trie = make_trie(words)

    import json
    import os

    with open("result_full.json", "w") as file:
        json.dump(trie, file)
    
    max_size = (50 * 1028) #Bytes
    
    for letter in "abcdefghijklmnopqrstuvwxyz":
        with open("output/result_"+letter+".json", "w") as file:
            
            json.dump(trie[letter], file)
            #test size against threshold
            file.seek(0, os.SEEK_END)
            if (file.tell() > max_size):
                _output_subfiles(letter, trie[letter], file)
    
     
    print("debug")
    input("Press Enter to close.")
