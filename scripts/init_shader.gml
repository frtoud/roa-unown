
#macro ALT_GAMEBOY  7

var current_color = get_player_color(player);

if (current_color == ALT_GAMEBOY)
{
    set_character_color_shading(0, 0);
}

//Hidden Power color shift
var hue = (get_gameplay_time() * 3) % 360;
var new_color = make_color_hsv(hue, 240, 240);
set_article_color_slot(7, color_get_red(new_color), color_get_green(new_color), color_get_blue(new_color));

//prevent reshading of eyes during parry (not working!?)
//if ("perfect_dodging" in self && perfect_dodging)
{
    set_character_color_slot(1, get_color_profile_slot_r(current_color, 1),
                                get_color_profile_slot_g(current_color, 1), 
                                get_color_profile_slot_b(current_color, 1));
    set_character_color_slot(2, get_color_profile_slot_r(current_color, 2),
                                get_color_profile_slot_g(current_color, 2), 
                                get_color_profile_slot_b(current_color, 2));
}