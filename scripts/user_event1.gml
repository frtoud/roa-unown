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
    else if (attack != AT_TAUNT) //? case
    {
        if (string_length(unown_text_buffer) > 0)
            unown_text_buffer = string_delete(unown_text_buffer, string_length(unown_text_buffer), 1)
    }
    //else: ! has emptied the word buffer already
    
    //recalculate buff
    
}