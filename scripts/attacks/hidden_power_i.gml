var atk = 9; // I
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_I"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_I_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 4);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 40);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_CANCEL_FRAME, 8); //frame at which it can proceed to window 2 (unless special is held)

set_window_value(atk, 2, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 2, AG_WINDOW_SFX, asset_get("sfx_absa_new_whip1"));
set_window_value(atk, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(atk, 4, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 8);

//for positioning
var unit_distance = 24;
set_hitbox_value(atk, 0, HG_HITBOX_X, unit_distance);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 3);
set_hitbox_value(atk, 1, HG_LIFETIME, 6);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -unown_eye_center_offset - unit_distance);
set_hitbox_value(atk, 1, HG_WIDTH, 24);
set_hitbox_value(atk, 1, HG_HEIGHT, 24);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));

for (var i = 2; i <= 8; i++) //rest is identical
{
    set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, i, HG_PARENT_HITBOX, 1);
    set_hitbox_value(atk, i, HG_WINDOW, 3);
    set_hitbox_value(atk, i, HG_LIFETIME, 6);
    
    //initial positioning
    var mult_dist = (i % 2 == 0 ? 1 : -1) * floor((i+1)/2);
    set_hitbox_value(atk, i, HG_HITBOX_Y, -unown_eye_center_offset + mult_dist * unit_distance);
}

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.I, 3, AG_UNOWN_WINDOW_ACTIVE, true);
if ("i" not in unown_dictionary) unown_dictionary.i = make_trie_I();
//================================================================
//contains words starting with I
#define make_trie_I()
    return {a:{m:{b:{i:{c:{_:1}}}}},b:{u:{p:{r:{o:{f:{e:{n:{_:1}}}}}}}},c:{e:{_:1,b:{e:{r:{g:{_:1,s:{_:1}}}},o:{x:{_:1}},r:{e:{a:{k:{e:{r:{_:1}}}}}}},d:{_:1},h:{o:{u:{s:{e:{_:1}}}}},m:{a:{n:{_:1}}}},h:{_:1},i:{c:{l:{e:{_:1,s:{_:1}}}},n:{g:{_:1}}},k:{_:1,y:{_:1}},o:{n:{_:1,s:{_:1}}},y:{_:1}},d:{_:1,e:{a:{_:1,l:{_:1,i:{s:{t:{_:1,i:{c:{_:1}}}},z:{e:{d:{_:1}}}},l:{y:{_:1}},s:{_:1}},s:{_:1}},n:{t:{i:{c:{a:{l:{_:1}}},f:{i:{a:{b:{l:{e:{_:1}}}},c:{a:{t:{i:{o:{n:{_:1}}}}}},e:{d:{_:1},s:{_:1}}},y:{_:1,i:{n:{g:{_:1}}}}},t:{i:{e:{s:{_:1}}},y:{_:1}}}}},o:{l:{o:{g:{y:{_:1}}}}}},i:{o:{c:{y:{_:1}},m:{_:1},s:{y:{n:{c:{r:{a:{s:{i:{e:{s:{_:1}}}}}}}}}},t:{_:1,i:{c:{_:1}},s:{_:1}}}},l:{e:{_:1},i:{n:{g:{_:1}}},y:{_:1}},o:{l:{_:1,i:{z:{e:{d:{_:1}}}},s:{_:1}}},y:{l:{l:{i:{c:{_:1}}}}}},f:{_:1,f:{_:1,y:{_:1}},s:{_:1}},g:{l:{o:{o:{_:1}}},n:{e:{o:{u:{s:{_:1}}}},i:{t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1}}}}},o:{r:{a:{m:{u:{s:{_:1}}},n:{c:{e:{_:1}},t:{_:1}}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},u:{a:{n:{a:{_:1,s:{_:1}}}}},g:{l:{y:{b:{u:{f:{f:{_:1}}}}}}}},l:{i:{a:{d:{_:1}}},k:{_:1},l:{_:1,e:{g:{a:{l:{_:1,l:{y:{_:1}},s:{_:1}}},i:{b:{l:{e:{_:1}}},t:{i:{m:{a:{t:{e:{_:1}}}}}}}}},i:{c:{i:{t:{_:1}}}},n:{e:{s:{s:{_:1,e:{s:{_:1}}}}}},o:{g:{i:{c:{a:{l:{_:1}}}}}},s:{_:1},u:{m:{i:{n:{a:{t:{e:{_:1},i:{n:{g:{_:1}},o:{n:{_:1}}}}}},s:{e:{_:1}}}},s:{i:{o:{n:{_:1,s:{_:1}}}},t:{r:{a:{t:{e:{_:1,d:{_:1},s:{_:1}},i:{o:{n:{_:1}}}}},i:{o:{u:{s:{_:1}}}}}}}}}},m:{a:{g:{e:{_:1,r:{y:{_:1}},s:{_:1}},i:{n:{a:{b:{l:{e:{_:1}}},r:{y:{_:1}},t:{i:{o:{n:{_:1,s:{_:1}}},v:{e:{_:1}}}}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},m:{_:1}},b:{e:{c:{i:{l:{e:{_:1,s:{_:1}},i:{c:{_:1}}}}},d:{d:{e:{d:{_:1}}}}},u:{e:{d:{_:1}}}},i:{t:{a:{t:{e:{_:1},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}},m:{a:{c:{u:{l:{a:{t:{e:{_:1}}}}}},t:{e:{r:{i:{a:{l:{_:1}}}}},u:{r:{e:{_:1},i:{t:{y:{_:1}}}}}}},e:{d:{i:{a:{t:{e:{_:1,l:{y:{_:1}}}}}}},n:{s:{e:{_:1,l:{y:{_:1}}}}},r:{s:{e:{_:1},i:{o:{n:{_:1}}}}}},i:{g:{r:{a:{n:{t:{s:{_:1}}},t:{i:{o:{n:{_:1}}}}}}},n:{e:{n:{t:{_:1}}}}},o:{b:{i:{l:{e:{_:1},i:{z:{e:{_:1}}}}}},d:{e:{s:{t:{_:1}}}},r:{a:{l:{_:1}},t:{a:{l:{_:1,i:{t:{y:{_:1}},z:{e:{d:{_:1}}}}}}}}},u:{n:{e:{_:1},i:{t:{y:{_:1}}}},t:{a:{b:{l:{e:{_:1}}}}}}},p:{_:1,a:{c:{t:{_:1,e:{d:{_:1}},s:{_:1}}},i:{r:{e:{d:{_:1}}}},l:{a:{_:1},e:{_:1,d:{_:1}}},r:{t:{_:1,i:{a:{l:{_:1}}}}},s:{s:{i:{o:{n:{e:{d:{_:1}}}}}}},t:{i:{e:{n:{c:{e:{_:1}},t:{_:1}}}}}},e:{a:{c:{h:{_:1,e:{d:{_:1}}}}},c:{c:{a:{b:{l:{e:{_:1}}}}}},d:{i:{m:{e:{n:{t:{_:1,s:{_:1}}}}},n:{g:{_:1}}}},n:{d:{i:{n:{g:{_:1}}}},e:{t:{r:{a:{b:{l:{e:{_:1}}}}}}}},r:{a:{t:{i:{v:{e:{_:1}}}}},f:{e:{c:{t:{_:1,i:{o:{n:{_:1,s:{_:1}}}}}}}},i:{a:{l:{_:1,i:{s:{t:{_:1}}}}}},s:{o:{n:{a:{l:{_:1},t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}},o:{r:{_:1}}}}}}},t:{i:{n:{e:{n:{t:{_:1}}}}}},v:{i:{o:{u:{s:{_:1}}}}}},t:{u:{o:{u:{s:{_:1}}}}}},l:{a:{n:{t:{_:1,e:{d:{_:1}},s:{_:1}}},u:{s:{i:{b:{l:{e:{_:1}}}}}}},e:{m:{e:{n:{t:{_:1,e:{d:{_:1}}}}}}},i:{c:{a:{t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}}}},i:{t:{l:{y:{_:1}}}}},e:{d:{_:1},s:{_:1}}},o:{d:{i:{n:{g:{_:1}}}},r:{e:{_:1}}},y:{_:1,i:{n:{g:{_:1}}}}},o:{l:{i:{t:{e:{_:1}}}},r:{t:{_:1,a:{n:{c:{e:{_:1}},t:{_:1,l:{y:{_:1}}}}},e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},s:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},t:{i:{o:{n:{_:1}}}}},s:{i:{b:{i:{l:{i:{t:{y:{_:1}}}}},l:{e:{_:1},y:{_:1}}}}},t:{e:{r:{_:1}},o:{r:{_:1}}}},t:{e:{n:{c:{e:{_:1}},t:{_:1}}}},u:{n:{d:{_:1,e:{d:{_:1}}}}}},r:{a:{c:{t:{i:{c:{a:{l:{_:1}}}}}}},e:{g:{n:{a:{t:{e:{d:{_:1}}}}}},s:{s:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,a:{b:{l:{e:{_:1}}}},i:{s:{t:{s:{_:1}}}},s:{_:1}}},v:{e:{_:1}}}}}},i:{n:{t:{_:1}},s:{o:{n:{e:{d:{_:1}},m:{e:{n:{t:{_:1}}}}}}}},o:{m:{p:{t:{u:{_:1}}}},p:{e:{r:{_:1,l:{y:{_:1}}}},r:{i:{e:{t:{y:{_:1}}}}}},v:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1,s:{_:1}}}}},s:{_:1}},i:{n:{g:{_:1}},s:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}}}},u:{d:{e:{n:{c:{e:{_:1}},t:{_:1}}}},l:{s:{e:{_:1,s:{_:1}},i:{v:{e:{_:1,l:{y:{_:1}}}}}}},n:{i:{t:{y:{_:1}}}}},i:{d:{i:{m:{p:{_:1}}}}}}},n:{_:1,a:{b:{i:{l:{i:{t:{y:{_:1}}}}}},c:{c:{e:{s:{s:{i:{b:{l:{e:{_:1}}}}}}},u:{r:{a:{c:{i:{e:{s:{_:1}}}},t:{e:{_:1}}}}}},t:{i:{v:{e:{_:1}}}}},d:{e:{q:{u:{a:{c:{y:{_:1}},t:{e:{_:1}}}}}},m:{i:{s:{s:{i:{b:{l:{e:{_:1}}}}}}}},v:{e:{r:{t:{e:{n:{t:{l:{y:{_:1}}}}}}}}}},p:{p:{r:{o:{p:{r:{i:{a:{t:{e:{_:1,l:{y:{_:1}}}}}}}}}}}},u:{g:{u:{r:{a:{l:{_:1}}}}}}},b:{o:{u:{n:{d:{_:1}}}},r:{e:{d:{_:1},e:{d:{i:{n:{g:{_:1}}}}}}}},c:{a:{n:{t:{a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}}}},p:{a:{b:{l:{e:{_:1}}},c:{i:{t:{a:{t:{e:{_:1,d:{_:1}}}}}}}}},r:{c:{e:{r:{a:{t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1}}}}}}}},n:{a:{t:{i:{o:{n:{_:1}}}}}}},s:{e:{_:1}}},e:{n:{d:{i:{a:{r:{y:{_:1}}}}},s:{e:{_:1,d:{_:1}}},t:{i:{v:{e:{_:1,s:{_:1}}}}}},p:{t:{i:{o:{n:{_:1}}}}},s:{s:{a:{n:{t:{l:{y:{_:1}}}}}},t:{_:1,u:{o:{u:{s:{_:1}}}}}}},h:{_:1,e:{s:{_:1}}},i:{d:{e:{n:{c:{e:{_:1}},t:{_:1,a:{l:{_:1,l:{y:{_:1}}}},s:{_:1}}}}},n:{e:{r:{a:{t:{e:{_:1,d:{_:1}},o:{r:{_:1}}}},o:{a:{r:{_:1}}}}}},s:{i:{o:{n:{_:1}}}},t:{e:{_:1}}},l:{i:{n:{e:{d:{_:1}}}},u:{d:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},o:{g:{n:{i:{t:{o:{_:1}}}}},h:{e:{r:{e:{n:{t:{_:1}}}}}},m:{e:{_:1},i:{n:{g:{_:1}}},m:{u:{n:{i:{c:{a:{d:{o:{_:1}}}}}}}},p:{a:{r:{a:{b:{l:{e:{_:1}}}}},t:{i:{b:{l:{e:{_:1}}}}}},e:{t:{e:{n:{c:{e:{_:1}},t:{_:1}}}}},l:{e:{t:{e:{_:1}}}}}},n:{c:{e:{i:{v:{a:{b:{l:{e:{_:1}}}}}}}},s:{i:{d:{e:{r:{a:{t:{e:{_:1}}}}}},s:{t:{e:{n:{c:{i:{e:{s:{_:1}}}},t:{_:1}}}}}},o:{l:{a:{b:{l:{e:{_:1}}}}}},p:{i:{c:{u:{o:{u:{s:{_:1}}}}}}}},v:{e:{n:{i:{e:{n:{c:{e:{_:1},i:{n:{g:{_:1}}}},t:{_:1}}}}}}}},r:{p:{o:{r:{a:{t:{e:{_:1}}}}}},r:{e:{c:{t:{_:1,l:{y:{_:1}}}}},i:{g:{i:{b:{l:{e:{_:1}}}}}}}}},r:{e:{a:{s:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1,l:{y:{_:1}}}}}}},d:{i:{b:{l:{e:{_:1},y:{_:1}}}}},m:{e:{n:{t:{s:{_:1}}}}}},i:{m:{i:{n:{a:{t:{e:{_:1},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}}}}},u:{b:{a:{t:{i:{o:{n:{_:1}}},o:{r:{_:1,s:{_:1}}}}}},r:{_:1,r:{e:{d:{_:1}}}}}},d:{e:{b:{t:{e:{d:{_:1}}}},c:{e:{n:{t:{_:1}}},i:{s:{i:{o:{n:{_:1}}}}}},e:{d:{_:1,e:{e:{_:1}}}},f:{e:{n:{s:{i:{b:{l:{e:{_:1}}}}}}},i:{n:{i:{t:{e:{_:1,l:{y:{_:1}}}}}}}},l:{i:{c:{a:{t:{e:{_:1}}}}}},n:{t:{u:{r:{e:{d:{_:1}}}}}},p:{e:{n:{d:{e:{n:{c:{e:{_:1}},t:{_:1}}}}}}},s:{c:{r:{i:{b:{a:{b:{l:{e:{_:1}}}}}}}},t:{r:{u:{c:{t:{i:{b:{l:{e:{_:1}}}}}}}}}},t:{e:{r:{m:{i:{n:{a:{t:{e:{_:1}}}}}}}}},x:{_:1}},i:{c:{a:{t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}},v:{e:{_:1}}},o:{r:{_:1,s:{_:1}}}}},t:{_:1,e:{d:{_:1}},m:{e:{n:{t:{_:1,s:{_:1}}}}}}},e:{_:1,s:{_:1}},f:{f:{e:{r:{e:{n:{c:{e:{_:1}},t:{_:1}}}}}}},g:{e:{n:{o:{u:{s:{_:1}}}},s:{t:{i:{o:{n:{_:1}}}}}},n:{a:{n:{t:{_:1}},t:{i:{o:{n:{_:1}}}}},i:{t:{i:{e:{s:{_:1}}}}}},o:{_:1}},r:{e:{c:{t:{l:{y:{_:1}}}}}},s:{c:{r:{e:{e:{t:{_:1}},t:{i:{o:{n:{_:1,s:{_:1}}}}}}}},p:{e:{n:{s:{a:{b:{l:{e:{_:1}}}}}}}}},v:{i:{d:{u:{a:{l:{_:1,i:{t:{y:{_:1}}},l:{y:{_:1}},s:{_:1}}}}}}}},o:{o:{r:{_:1,s:{_:1}}}},u:{c:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1}}}}},i:{n:{g:{_:1}}},t:{i:{o:{n:{_:1}}}}},l:{g:{e:{_:1,d:{_:1},n:{c:{e:{_:1}},t:{_:1}}},i:{n:{g:{_:1}}}}},s:{t:{r:{i:{a:{l:{_:1,i:{s:{t:{_:1}}}}},e:{s:{_:1}},o:{u:{s:{_:1}}}},y:{_:1}}}}}},e:{d:{i:{b:{l:{e:{_:1}}}}},f:{f:{e:{c:{t:{i:{v:{e:{_:1}}}}}},i:{c:{i:{e:{n:{t:{_:1}}}}}}}},p:{t:{_:1}},v:{i:{t:{a:{b:{i:{l:{i:{t:{y:{_:1}}}}},l:{e:{_:1},y:{_:1}}}}}}},x:{c:{u:{s:{a:{b:{l:{e:{_:1}}}}}}},p:{e:{n:{s:{i:{v:{e:{_:1}}}}},r:{i:{e:{n:{c:{e:{_:1,d:{_:1}}}}}}}},l:{i:{c:{a:{b:{l:{e:{_:1}}}}}}}}}},f:{a:{l:{l:{i:{b:{l:{e:{_:1}}}}}},m:{o:{u:{s:{_:1}}},y:{_:1}},n:{t:{_:1,i:{l:{e:{_:1}}},r:{y:{_:1}},s:{_:1}}},r:{c:{t:{i:{o:{n:{_:1}}}}}},t:{u:{a:{t:{e:{d:{_:1}},i:{o:{n:{_:1}}}}}}}},e:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}},u:{s:{_:1}}}},s:{_:1}}},r:{e:{n:{c:{e:{_:1}}}},i:{o:{r:{_:1,i:{t:{y:{_:1}}}}}},n:{a:{l:{_:1},p:{e:{_:1}}},o:{_:1}},t:{i:{l:{e:{_:1}}}}},s:{t:{a:{t:{i:{o:{n:{_:1}}}}},e:{d:{_:1}}}}},i:{d:{e:{l:{i:{t:{i:{e:{s:{_:1}}},y:{_:1}}}}}},g:{h:{t:{i:{n:{g:{_:1}}}}}},l:{t:{r:{a:{t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1}}}}}}}},n:{i:{t:{e:{_:1,l:{y:{_:1}}},y:{_:1}}}},r:{m:{a:{r:{y:{_:1}}}}}},l:{a:{m:{e:{_:1,d:{_:1}},m:{a:{t:{i:{o:{n:{_:1}}},o:{r:{y:{_:1}}}}}}},t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}},e:{x:{i:{b:{l:{e:{_:1}}}}}},i:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}},u:{e:{n:{c:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},t:{i:{a:{l:{_:1}}}},z:{a:{_:1}}}},x:{_:1}}},o:{_:1,m:{e:{r:{c:{i:{a:{l:{_:1}}}}}}},r:{m:{_:1,a:{l:{_:1},n:{t:{_:1}},t:{i:{o:{n:{_:1,a:{l:{_:1}}}}}}},e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},r:{a:{_:1,c:{t:{i:{o:{n:{_:1}}}}},r:{e:{d:{_:1}}},s:{t:{r:{u:{c:{t:{u:{r:{e:{_:1}}}}}}}}}}},u:{r:{i:{a:{t:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}}}},s:{e:{d:{_:1}}}}},g:{e:{n:{i:{o:{u:{s:{_:1}}}},u:{e:{_:1}}},s:{t:{_:1,e:{d:{_:1}}}}},l:{e:{s:{_:1}}},r:{a:{t:{e:{s:{_:1}},i:{t:{u:{d:{e:{_:1}}}}}}},e:{d:{i:{e:{n:{t:{_:1,s:{_:1}}}}}}}}},h:{a:{b:{i:{t:{_:1,a:{n:{t:{s:{_:1}}}}}}},l:{a:{t:{i:{o:{n:{_:1}}}}},e:{_:1,d:{_:1},r:{_:1}},i:{n:{g:{_:1}}}}},e:{r:{e:{n:{t:{l:{y:{_:1}}}}},i:{t:{_:1,a:{n:{c:{e:{_:1}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}}},i:{b:{i:{t:{o:{r:{_:1,s:{_:1}}}}}}},u:{m:{a:{n:{_:1,e:{_:1}}}}}},i:{t:{i:{a:{l:{_:1,l:{y:{_:1}},s:{_:1}},t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}},v:{e:{_:1,s:{_:1}}}}}}}}},j:{e:{c:{t:{_:1,e:{d:{_:1}},i:{o:{n:{_:1,s:{_:1}}}},o:{r:{_:1}}}}},u:{n:{c:{t:{i:{o:{n:{_:1}}}}}},r:{e:{_:1,d:{_:1}},i:{e:{s:{_:1}}},y:{_:1}},s:{t:{i:{c:{e:{_:1}}}}}}},k:{_:1,l:{i:{n:{g:{_:1}}}},a:{y:{_:1}}},l:{a:{i:{d:{_:1}},n:{d:{_:1}}}},m:{a:{t:{e:{_:1,s:{_:1}}}}},n:{_:1,a:{r:{d:{s:{_:1}}}},e:{r:{_:1,m:{o:{s:{t:{_:1}}}}}},i:{n:{g:{_:1,s:{_:1}}}},k:{e:{e:{p:{e:{r:{_:1}}}}}},o:{c:{e:{n:{c:{e:{_:1}},t:{_:1,l:{y:{_:1}},s:{_:1}}}},u:{o:{u:{s:{_:1}}}}},v:{a:{t:{i:{o:{n:{_:1}},v:{e:{_:1}}}}}}},u:{e:{n:{d:{o:{_:1,e:{s:{_:1}}}}}}}},o:{p:{p:{o:{r:{t:{u:{n:{e:{_:1}}}}}}}}},p:{u:{t:{_:1}}},q:{u:{e:{s:{t:{_:1}}},i:{r:{i:{e:{s:{_:1}}},y:{_:1}},s:{i:{t:{i:{o:{n:{_:1}}},o:{r:{_:1}}}}}}}},r:{o:{a:{d:{s:{_:1}}}}},s:{_:1,a:{n:{e:{_:1,l:{y:{_:1}}},i:{t:{y:{_:1}}}},t:{i:{a:{b:{l:{e:{_:1}}}}}}},c:{r:{i:{p:{t:{i:{o:{n:{_:1}}}}}},u:{t:{a:{b:{l:{e:{_:1}}}}}}}},e:{c:{t:{_:1,s:{_:1}},u:{r:{e:{_:1},i:{t:{i:{e:{s:{_:1}}},y:{_:1}}}}}},m:{i:{n:{a:{t:{e:{d:{_:1}}}}}}},n:{s:{i:{t:{i:{v:{e:{_:1},i:{t:{y:{_:1}}}}}}}}},p:{a:{r:{a:{b:{l:{e:{_:1}}}}}}},r:{t:{_:1,i:{o:{n:{_:1}}}}}},i:{d:{e:{_:1,r:{_:1},s:{_:1}},i:{o:{u:{s:{_:1}}}}},g:{h:{t:{_:1,f:{u:{l:{_:1}}},s:{_:1}}},n:{i:{a:{_:1},f:{i:{c:{a:{n:{t:{_:1}}}}}}}}},n:{c:{e:{r:{e:{_:1}}}},u:{a:{t:{e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{s:{_:1}}}}}}}},p:{i:{d:{_:1}}},s:{t:{_:1,e:{d:{_:1},n:{c:{e:{_:1}},t:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}}}},o:{l:{e:{n:{c:{e:{_:1}},t:{_:1}}}},m:{n:{i:{a:{_:1}}}}},p:{e:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}},o:{r:{_:1,s:{_:1}}}}}},i:{r:{a:{t:{i:{o:{n:{_:1,a:{l:{_:1}}}}}}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},t:{a:{l:{l:{_:1,a:{t:{i:{o:{n:{_:1}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1,s:{_:1}}}}}}},n:{c:{e:{_:1,s:{_:1}}},t:{_:1,a:{n:{e:{o:{u:{s:{_:1}}}}}},l:{y:{_:1}}}}},e:{a:{d:{_:1}},p:{_:1}},i:{g:{a:{t:{e:{d:{_:1}},o:{r:{_:1}}}}},l:{l:{_:1,e:{d:{_:1}}}},n:{c:{t:{_:1,i:{v:{e:{l:{y:{_:1}}}}},s:{_:1}}}},t:{u:{t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1,a:{l:{_:1}},s:{_:1}}}}}}}},r:{u:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}},o:{r:{_:1,s:{_:1}}}}},m:{e:{n:{t:{_:1,s:{_:1}}}}}}}},u:{f:{f:{e:{r:{a:{b:{l:{e:{_:1}}}}}},i:{c:{i:{e:{n:{t:{_:1}}}}}}}},l:{a:{t:{e:{d:{_:1}},i:{o:{n:{_:1}}}}},i:{n:{_:1}},t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},r:{a:{n:{c:{e:{_:1}}}},e:{_:1,d:{_:1}},i:{n:{g:{_:1}}},m:{o:{u:{n:{t:{a:{b:{l:{e:{_:1}}}}}}}}},r:{e:{c:{t:{i:{o:{n:{_:1}}}}}}}}}},t:{a:{c:{t:{_:1}},k:{e:{_:1}}},e:{g:{r:{a:{l:{_:1},t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1}}}}},i:{t:{y:{_:1}}}}},l:{l:{e:{c:{t:{_:1,u:{a:{l:{_:1,l:{y:{_:1}},s:{_:1}}}}}}},i:{g:{e:{n:{c:{e:{_:1}},t:{_:1,l:{y:{_:1}}}}}}}},e:{o:{n:{_:1}}}},n:{d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},s:{e:{_:1,l:{y:{_:1}}},i:{t:{y:{_:1}},v:{e:{_:1}}}},t:{_:1,i:{o:{n:{_:1,a:{l:{_:1,l:{y:{_:1}}}},s:{_:1}}}},l:{y:{_:1}}}},r:{_:1,a:{c:{t:{_:1,i:{n:{g:{_:1}},o:{n:{_:1}},v:{e:{_:1}}}}}},c:{e:{d:{e:{_:1}},p:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}},h:{a:{n:{g:{e:{a:{b:{l:{e:{_:1}}}}}}}}},o:{m:{_:1},u:{r:{s:{e:{_:1}}}}}},e:{s:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},f:{a:{c:{e:{_:1},i:{n:{g:{_:1}}}}},e:{r:{e:{_:1,d:{_:1},n:{c:{e:{_:1}}},s:{_:1}},i:{n:{g:{_:1}}}}}},i:{o:{r:{_:1}}},j:{e:{c:{t:{_:1}}}},l:{u:{d:{e:{_:1}}}},m:{e:{d:{i:{a:{r:{y:{_:1}},t:{e:{_:1}}}}}},i:{s:{s:{i:{o:{n:{_:1}}}}},t:{t:{e:{n:{t:{_:1}}}}}}},n:{_:1,a:{l:{_:1,l:{y:{_:1}}},t:{i:{o:{n:{a:{l:{_:1,l:{y:{_:1}}}}}}}}},i:{n:{g:{_:1}},s:{t:{_:1}}},m:{e:{n:{t:{_:1}}}},s:{_:1,h:{i:{p:{_:1}}}}},p:{l:{a:{n:{e:{t:{a:{r:{y:{_:1}}}}}}}},r:{e:{t:{_:1,a:{t:{i:{o:{n:{_:1}}}}},e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}},v:{e:{_:1}}}}}}},r:{a:{c:{i:{a:{l:{_:1}}}}},o:{g:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}}}}}},u:{p:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}},s:{_:1}}}}},s:{e:{c:{t:{i:{o:{n:{_:1}}}}}},t:{a:{t:{e:{_:1}}},e:{l:{l:{a:{r:{_:1}}}}}}},t:{w:{i:{n:{e:{d:{_:1}}}}}},v:{e:{n:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}},t:{i:{o:{n:{_:1}}}}}},i:{e:{w:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}}}},s:{t:{i:{n:{a:{l:{_:1}},e:{s:{_:1}}}}}}},i:{m:{a:{c:{y:{_:1}},t:{e:{_:1,d:{_:1},l:{y:{_:1}}}}},i:{d:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}}}}},o:{_:1,l:{e:{r:{a:{b:{l:{e:{_:1}}},n:{t:{_:1}}}}}},x:{i:{c:{a:{t:{e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}}}},r:{a:{v:{e:{n:{o:{u:{s:{_:1,l:{y:{_:1}}}}}}}}},i:{g:{u:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},o:{_:1,d:{u:{c:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},t:{i:{o:{n:{_:1,s:{_:1}}}},o:{r:{y:{_:1}}}}}}},s:{_:1}},u:{d:{e:{_:1,d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}},s:{i:{o:{n:{_:1}}}}}},u:{b:{a:{t:{e:{_:1}}}},i:{t:{i:{o:{n:{_:1}},v:{e:{_:1}}}}}}},u:{n:{d:{a:{t:{e:{d:{_:1}}}}}}},v:{a:{d:{e:{_:1,d:{_:1},r:{s:{_:1}}},i:{n:{g:{_:1}}}},l:{i:{d:{_:1,a:{t:{e:{_:1}}}}},u:{a:{b:{l:{e:{_:1}}}}}},s:{i:{o:{n:{_:1}},v:{e:{_:1}}}}},e:{n:{t:{_:1,e:{d:{_:1}},i:{o:{n:{_:1,s:{_:1}}},v:{e:{_:1}}},o:{r:{y:{_:1}}}}},r:{t:{e:{d:{_:1}}}},s:{t:{_:1,e:{d:{_:1}},i:{g:{a:{t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}},v:{e:{_:1}}},o:{r:{_:1,s:{_:1}}}}}},n:{g:{_:1}}},m:{e:{n:{t:{_:1,s:{_:1}}}}},o:{r:{s:{_:1}}}}}},i:{g:{o:{r:{a:{t:{e:{d:{_:1}},i:{n:{g:{_:1}}}}}}}},n:{c:{i:{b:{l:{e:{_:1}}}}}},s:{i:{b:{i:{l:{i:{t:{y:{_:1}}}}},l:{e:{_:1}}}}},t:{a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},o:{i:{c:{e:{_:1,s:{_:1}}}},k:{e:{_:1,d:{_:1}}},l:{v:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1}}}},s:{_:1}},i:{n:{g:{_:1}}}}}}}},o:{n:{_:1,s:{_:1}}},p:{e:{c:{a:{c:{_:1}}}}},r:{i:{s:{_:1}},o:{n:{_:1,c:{l:{a:{d:{_:1}}}},e:{d:{_:1}},i:{c:{_:1,a:{l:{l:{y:{_:1}}}}},e:{s:{_:1}},n:{g:{_:1}}},s:{_:1},y:{_:1}}},r:{a:{t:{i:{o:{n:{a:{l:{_:1,l:{y:{_:1}}}}}}}}},e:{g:{u:{l:{a:{r:{_:1,i:{t:{i:{e:{s:{_:1}}}}}}}}}},l:{e:{v:{a:{n:{t:{_:1}}}}}},p:{a:{r:{a:{b:{l:{e:{_:1}}}}}},l:{a:{c:{e:{a:{b:{l:{e:{_:1}}}}}}}}},s:{i:{s:{t:{i:{b:{l:{e:{_:1}}}}}}},p:{o:{n:{s:{i:{b:{l:{e:{_:1}}}}}}}}},v:{o:{c:{a:{b:{l:{y:{_:1}}}}}}}},i:{g:{a:{t:{e:{_:1},i:{o:{n:{_:1}}}}}},t:{a:{b:{l:{e:{_:1}}},t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}}}},s:{_:1,l:{a:{n:{d:{_:1,e:{r:{s:{_:1}}},s:{_:1}}}}},o:{l:{a:{t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1}}}}}},t:{o:{p:{e:{s:{_:1}}}}}},s:{u:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},t:{_:1,c:{h:{_:1,e:{s:{_:1}},i:{n:{g:{_:1}}},y:{_:1}}},e:{m:{_:1,s:{_:1}}},i:{n:{e:{r:{a:{r:{y:{_:1}}}}}}},s:{_:1,e:{l:{f:{_:1}}}}},v:{o:{r:{i:{e:{s:{_:1}}},y:{_:1}}},y:{_:1,s:{a:{u:{r:{_:1}}}}}}};