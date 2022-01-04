

var list_of_words = "aaa bbb ccc";

var test_trie = {};
var length = string_length(list_of_words);
var stop = false;
var i = 1;
while (i < length)
{
    var n = 1;
    while (" " != string_char_at(list_of_words, i + n) && ((i + n) <= length)) n++;
    insert_in_trie(test_trie, string_copy(list_of_words, i, n));
    i += n + 1;
}

print(test_trie);

print(test_trie.h.e.l.l.o._)

#macro TERMINATOR  "_"

#define insert_in_trie(top_trie, word)
{
    word = string_letters(string_lower(word));
    print(word);
    var word_length = string_length(word);
    var cur_trie = top_trie;
    for (var cur_index = 1; cur_index <= word_length; cur_index++)
    {
        var letter = string_char_at(word, cur_index);
        if (letter in cur_trie)
        {
            cur_trie = variable_instance_get(cur_trie, letter);
        }
        else
        {
            variable_instance_set(cur_trie, letter, {});
            cur_trie = variable_instance_get(cur_trie, letter);
        }
    }
    
    //mark path as valid
    variable_instance_set(cur_trie, TERMINATOR, true);
}
