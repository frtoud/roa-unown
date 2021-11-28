//User Event 1: Word typing

if !(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
{ 
    unown_attack_is_fresh = false; exit;
}
// else
if (window_timer <= 1 && get_window_value(attack, window, AG_UNOWN_WINDOW_ACTIVE))
{
    //reached active window
    unown_attack_is_fresh = false;
    
    if (is_string(unown_form_data[unown_current_form].letter))
    {
        unown_text_buffer += unown_form_data[unown_current_form].letter;
        if (string_length(unown_text_buffer) > unown_text_maxlength)
            unown_text_buffer = string_delete(unown_text_buffer, 1, 1);
    }
    else if (attack == AT_TAUNT) //! case: consume buffer
    {
        unown_text_buffer = "";
    }
    else  //? case: backspace
    {
        if (string_length(unown_text_buffer) > 0)
            unown_text_buffer = string_delete(unown_text_buffer, string_length(unown_text_buffer), 1)
    }
    
    //recalculate buff
    var prev_best_word = unown_best_word_length;
    var results = longest_match(unown_dictionary, string_lower(unown_text_buffer));
    unown_best_word_pos = results[0];
    unown_best_word_length = results[1] - results[0];
    
    if (prev_best_word != unown_best_word_length)
    {
        unown_recalculate_stats = true;
        unown_current_bonus = unown_word_length_bonus[
            min(array_length(unown_word_length_bonus) -1, unown_best_word_length)];
        
        if (unown_best_word_length < prev_best_word)
        {
            //lost buff
            sound_play(sfx_unown_buff_down);
        }
        else
        {
            //gained buff
            sound_play(sfx_unown_buff_up);
            inward_hidden_power_timer = inward_hidden_power_timer_max;
        }
    }
}



//====================================================================
// Trie structure parser 
// call THX-1138-QAZZ to schedule an appointment for repairs
#macro TRIE_TERMINATOR "_"

#define longest_match(trie, str) 
{
    var longest_match_start = -1
    var longest_match_end = -1
    for(var char_i=0; char_i < string_length(str); char_i++) 
    {
        var match_length = num_chars_in_longest_match_from_index(trie, str, char_i)
        var current_best_length = longest_match_end - longest_match_start
        if (match_length > current_best_length)
        {
            longest_match_start = char_i
            longest_match_end = char_i + match_length
        }
    }
    return [longest_match_start, longest_match_end];
}

#define num_chars_in_longest_match_from_index(trie, str, start_index) 
{
    var sub_trie = trie
    var num_chars_in_longest_match = 0
    for(var char_i=0; char_i < string_length(str)-start_index; char_i++) 
    {
        var char = string_char_at(str, char_i + 1 + start_index);
        sub_trie = variable_instance_get(sub_trie, char, false)
        // prints(char_i, char, sub_trie)
        if variable_instance_get(sub_trie, TRIE_TERMINATOR, false) 
        {
            // This is a match
            num_chars_in_longest_match = char_i + 1
        }
    }
    return num_chars_in_longest_match
}
