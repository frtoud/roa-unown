var atk = 21; // U
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_U"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_U_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 16);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(atk, 2);

//Early hit
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 3);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -8);
set_hitbox_value(atk, 1, HG_WIDTH, 48);
set_hitbox_value(atk, 1, HG_HEIGHT, 48);
set_hitbox_value(atk, 1, HG_PRIORITY, 6);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 1, HG_UNOWN_SCALING_BONUS, 0.15);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(atk, 1, HG_HIT_SFX, sound_get("ssbb_bumper"));
set_hitbox_value(atk, 1, HG_HITBOX_GROUP, 0);

//Late hit
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 3);
set_hitbox_value(atk, 2, HG_LIFETIME, 6);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -6);
set_hitbox_value(atk, 2, HG_WIDTH, 80);
set_hitbox_value(atk, 2, HG_HEIGHT, 40);
set_hitbox_value(atk, 2, HG_PRIORITY, 3);
set_hitbox_value(atk, 2, HG_DAMAGE, 4);
set_hitbox_value(atk, 2, HG_ANGLE, 70);
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, 2, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 2, HG_UNOWN_KNOCKBACK_BONUS, 2);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 2, HG_HIT_SFX, sound_get("ssbb_bumper"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.U, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("u" not in unown_dictionary) unown_dictionary.u = make_trie_U();
//================================================================
//contains words starting with U
#define make_trie_U()
    return {b:{i:{q:{u:{i:{t:{o:{u:{s:{_:1}}}}}}}}},g:{h:{_:1},l:{i:{e:{s:{_:1,t:{_:1}}},n:{e:{s:{s:{_:1}}}}},y:{_:1}}},h:{_:1},l:{c:{e:{r:{_:1,s:{_:1}}}},t:{e:{r:{i:{o:{r:{_:1}}}}},i:{m:{a:{t:{e:{_:1,l:{y:{_:1}}},u:{m:{_:1,s:{_:1}}}}}}},r:{a:{_:1,s:{o:{u:{n:{d:{_:1}}}}}}}}},m:{_:1,b:{i:{l:{i:{c:{a:{l:{_:1}}}}}},r:{e:{l:{l:{a:{_:1}}},o:{n:{_:1}}}}},m:{_:1},p:{_:1,i:{r:{e:{_:1}}},t:{e:{e:{n:{t:{h:{_:1}}}}}}}},n:{_:1,a:{b:{l:{e:{_:1}}},c:{c:{e:{p:{t:{a:{b:{l:{e:{_:1}}}}}}}}},d:{v:{i:{s:{e:{d:{l:{y:{_:1}}}}}}}},f:{f:{e:{c:{t:{e:{d:{_:1}}}}}}},n:{i:{m:{o:{u:{s:{_:1,l:{y:{_:1}}}}}}},n:{o:{u:{n:{c:{e:{d:{_:1}}}}}}},s:{w:{e:{r:{e:{d:{_:1}}}}}}},p:{p:{e:{a:{l:{i:{n:{g:{_:1}}}}}},r:{e:{c:{i:{a:{t:{e:{d:{_:1}}}}}}}}}},r:{m:{e:{d:{_:1}}}},t:{t:{a:{c:{h:{e:{d:{_:1}}}},i:{n:{a:{b:{l:{e:{_:1}}}}}}},e:{n:{d:{e:{d:{_:1}}}}},r:{a:{c:{t:{i:{v:{e:{_:1}}}}}}}}},u:{t:{h:{o:{r:{i:{z:{e:{d:{_:1}}}}}}}}},v:{a:{i:{l:{a:{b:{l:{e:{_:1}}}}}}},o:{i:{d:{a:{b:{l:{e:{_:1}}}}}}}},w:{a:{r:{e:{_:1}}}}},b:{a:{l:{a:{n:{c:{e:{d:{_:1}}}}}}},e:{a:{r:{a:{b:{l:{e:{_:1},y:{_:1}}}}},t:{a:{b:{l:{e:{_:1}}}}}},c:{o:{m:{i:{n:{g:{_:1}}}}}},k:{n:{o:{w:{n:{s:{t:{_:1}}}}}}},l:{i:{e:{v:{a:{b:{l:{e:{_:1},y:{_:1}}}}}}}}},l:{e:{m:{i:{s:{h:{e:{d:{_:1}}}}}}}},o:{r:{n:{_:1}}},r:{e:{a:{k:{a:{b:{l:{e:{_:1}}}}}}},o:{k:{e:{n:{_:1}}}}},u:{r:{d:{e:{n:{_:1}}}},t:{t:{o:{n:{e:{d:{_:1}}}}}}}},c:{a:{l:{l:{e:{d:{_:1}}}},n:{n:{y:{_:1}}},r:{i:{n:{g:{_:1}}}}},e:{r:{t:{a:{i:{n:{_:1,t:{y:{_:1}}}}}}}},h:{a:{n:{g:{e:{d:{_:1}}}}}},i:{v:{i:{l:{i:{z:{e:{d:{_:1}}}}}}}},l:{a:{i:{m:{e:{d:{_:1}}}}},e:{_:1,a:{r:{_:1}},n:{c:{h:{_:1}}},s:{_:1}}},o:{m:{f:{o:{r:{t:{a:{b:{l:{e:{_:1}}}}}}}},m:{o:{n:{_:1}}},p:{l:{i:{c:{a:{t:{e:{d:{_:1}}}}}}},r:{o:{m:{i:{s:{i:{n:{g:{_:1}}}}}}}}}},n:{c:{e:{r:{n:{e:{d:{_:1}}}}}},d:{i:{t:{i:{o:{n:{a:{l:{_:1}}}}}}}},s:{c:{i:{o:{n:{a:{b:{l:{e:{_:1}}}}},u:{s:{_:1,l:{y:{_:1}},n:{e:{s:{s:{_:1}}}}}}}}}},t:{r:{o:{l:{l:{a:{b:{l:{e:{_:1},y:{_:1}}}},e:{d:{_:1}}}}}}},v:{e:{n:{t:{i:{o:{n:{a:{l:{_:1}}}}}}}}}},o:{l:{_:1},p:{e:{r:{a:{t:{i:{v:{e:{_:1}}}}}}}}},v:{e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},u:{f:{f:{_:1}},t:{_:1}}},d:{e:{a:{d:{_:1}},c:{i:{d:{e:{d:{_:1}}}}},n:{i:{a:{b:{l:{y:{_:1}}}}}},r:{_:1,a:{g:{e:{_:1}}},c:{o:{v:{e:{r:{_:1}}}},u:{r:{r:{e:{n:{t:{_:1}}}}},t:{_:1}}},d:{e:{v:{e:{l:{o:{p:{e:{d:{_:1}}}}}}}},o:{g:{_:1}}},e:{s:{t:{i:{m:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}}}}}},g:{a:{r:{m:{e:{n:{t:{_:1,s:{_:1}}}}}}},o:{_:1,i:{n:{g:{_:1}}},n:{e:{_:1}}},r:{a:{d:{_:1,u:{a:{t:{e:{_:1}}}}}},o:{u:{n:{d:{_:1}}}}}},h:{a:{n:{d:{e:{d:{_:1}}}}}},l:{i:{n:{e:{_:1,d:{_:1}},g:{s:{_:1}}}},y:{i:{n:{g:{_:1}}}}},m:{i:{n:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},n:{e:{a:{t:{h:{_:1}}}}},p:{a:{i:{d:{_:1}},n:{t:{s:{_:1}}},s:{s:{_:1}}},r:{i:{v:{i:{l:{e:{g:{e:{d:{_:1}}}}}}}}}},s:{h:{i:{r:{t:{_:1}}}},t:{a:{n:{d:{_:1,a:{b:{l:{e:{_:1},y:{_:1}}}},i:{n:{g:{_:1}}},s:{_:1}}},t:{e:{m:{e:{n:{t:{_:1}}}}}}},o:{o:{d:{_:1}}},u:{d:{y:{_:1}}}}},t:{a:{k:{e:{_:1,n:{_:1}},i:{n:{g:{_:1}}}}},o:{w:{_:1}}},w:{a:{t:{e:{r:{_:1}}},y:{_:1}},e:{a:{r:{_:1}}},o:{r:{l:{d:{_:1}}}}}},s:{e:{r:{v:{i:{n:{g:{_:1}}}}}},i:{r:{a:{b:{l:{e:{_:1}}}}}}},t:{e:{c:{t:{a:{b:{l:{e:{_:1}}}},e:{d:{_:1}}}}}}},i:{e:{s:{_:1}},s:{c:{i:{p:{l:{i:{n:{e:{d:{_:1}}}}}}},l:{o:{s:{e:{d:{_:1}}}}},o:{v:{e:{r:{e:{d:{_:1}}}}}}},p:{u:{t:{e:{d:{_:1}}}}}},v:{i:{d:{e:{d:{_:1}}}}}},o:{_:1,i:{n:{g:{_:1}}},n:{e:{_:1}},u:{b:{t:{e:{d:{l:{y:{_:1}}}}}}}},r:{e:{s:{s:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},u:{e:{_:1},l:{y:{_:1}}},y:{i:{n:{g:{_:1}}}}},e:{a:{r:{t:{h:{_:1,e:{d:{_:1}}}}},s:{y:{_:1}}},d:{u:{c:{a:{t:{e:{d:{_:1}}}}}}},m:{p:{l:{o:{y:{a:{b:{l:{e:{_:1}}}},e:{d:{_:1}},m:{e:{n:{t:{_:1}}}}}}}}},n:{c:{u:{m:{b:{e:{r:{e:{d:{_:1}}}}}}}},d:{i:{n:{g:{_:1}}}}},q:{u:{i:{v:{o:{c:{a:{l:{l:{y:{_:1}}}}}}}}}},t:{h:{i:{c:{a:{l:{_:1}}}}}},v:{e:{n:{t:{f:{u:{l:{_:1}}}}}}},x:{p:{e:{c:{t:{e:{d:{_:1,l:{y:{_:1}}}}}}},l:{a:{i:{n:{e:{d:{_:1}}}}},o:{r:{e:{d:{_:1}}}}},r:{e:{s:{s:{e:{d:{_:1}}}}}}}}},f:{a:{i:{r:{_:1,l:{y:{_:1}},n:{e:{s:{s:{_:1}}}}},t:{h:{f:{u:{l:{_:1}}}}}},m:{i:{l:{i:{a:{r:{_:1}}}}}},t:{h:{o:{m:{a:{b:{l:{e:{_:1}}}}}}}}},i:{n:{i:{s:{h:{e:{d:{_:1}}}}}},t:{_:1}},l:{a:{t:{t:{e:{r:{i:{n:{g:{_:1}}}}}}}}},o:{l:{d:{_:1,i:{n:{g:{_:1}}},s:{_:1}}},r:{e:{s:{e:{e:{n:{_:1}}}}},g:{e:{t:{t:{a:{b:{l:{e:{_:1}}}}}}},i:{v:{a:{b:{l:{e:{_:1}}}},i:{n:{g:{_:1}}}}}},t:{u:{n:{a:{t:{e:{_:1,l:{y:{_:1}}}}}}}}},u:{n:{d:{e:{d:{_:1}}}}}},r:{e:{e:{z:{e:{_:1},i:{n:{g:{_:1}}}}}},i:{e:{n:{d:{l:{y:{_:1}}}}}}},u:{l:{f:{i:{l:{l:{e:{d:{_:1}}}}}}},n:{n:{y:{_:1}}}},e:{z:{a:{n:{t:{_:1}}}}}},g:{o:{d:{l:{y:{_:1}}}},r:{a:{t:{e:{f:{u:{l:{_:1}}}}}}},u:{a:{r:{d:{e:{d:{_:1}}}}}}},h:{a:{n:{d:{_:1}},p:{p:{i:{l:{y:{_:1}},n:{e:{s:{s:{_:1}}}}},y:{_:1}}},r:{m:{e:{d:{_:1}}}}},e:{a:{l:{t:{h:{y:{_:1}}}},r:{d:{_:1}}}},i:{n:{g:{e:{d:{_:1}}}}},o:{l:{y:{_:1}},o:{k:{_:1,e:{d:{_:1}}}}}},i:{c:{o:{r:{n:{_:1}}},y:{c:{l:{e:{_:1}}}}},d:{e:{n:{t:{i:{f:{i:{e:{d:{_:1}}}}}}}}},f:{i:{e:{d:{_:1}}},o:{r:{m:{_:1,i:{t:{y:{_:1}}},s:{_:1}}}}},m:{a:{g:{i:{n:{a:{t:{i:{v:{e:{_:1}}}}}}}}},p:{o:{r:{t:{a:{n:{t:{_:1}}}}}},r:{e:{s:{s:{e:{d:{_:1}}}}}}}},n:{f:{o:{r:{m:{e:{d:{_:1}}}}}},h:{i:{b:{i:{t:{e:{d:{_:1}}}}}}},s:{p:{i:{r:{e:{d:{_:1}}}}},u:{r:{e:{d:{_:1}}}}},t:{e:{l:{l:{i:{g:{i:{b:{l:{e:{_:1}}}}}}}},n:{t:{i:{o:{n:{a:{l:{l:{y:{_:1}}}}}}}}},r:{e:{s:{t:{i:{n:{g:{_:1}}}}}},r:{u:{p:{t:{e:{d:{_:1}}}}}}}}},v:{i:{t:{e:{d:{_:1}}}},o:{l:{v:{e:{d:{_:1}}}}}}},o:{n:{_:1,s:{_:1}}},q:{u:{e:{_:1}}},s:{e:{x:{_:1}}},t:{_:1,e:{_:1,d:{_:1}},s:{_:1},y:{_:1}},v:{e:{r:{s:{a:{l:{_:1,l:{y:{_:1}}}},e:{_:1,s:{_:1}},i:{t:{i:{e:{s:{_:1}}},y:{_:1}}}}}}}},j:{u:{s:{t:{l:{y:{_:1}}}}}},k:{n:{o:{w:{n:{_:1,s:{_:1}}}}}},l:{a:{w:{f:{u:{l:{_:1}}}}},e:{a:{d:{e:{d:{_:1}}},s:{h:{_:1,e:{d:{_:1}}}}},s:{s:{_:1}}},i:{k:{a:{b:{l:{e:{_:1}}}},e:{_:1,l:{y:{_:1}}}},m:{i:{t:{e:{d:{_:1}}}}},s:{t:{e:{d:{_:1}}}}},o:{a:{d:{_:1,i:{n:{g:{_:1}}}}},c:{k:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},v:{a:{b:{l:{e:{_:1}}}},e:{d:{_:1}}}},u:{c:{k:{y:{_:1}}}}},m:{a:{n:{n:{e:{d:{_:1}}}},r:{k:{e:{d:{_:1}}},r:{i:{e:{d:{_:1}}}}}},e:{n:{t:{i:{o:{n:{a:{b:{l:{e:{_:1,s:{_:1}}}}}}}}}}},i:{s:{t:{a:{k:{a:{b:{l:{e:{_:1}}}}}}}},t:{i:{g:{a:{t:{e:{d:{_:1}}}}}}}}},n:{a:{t:{u:{r:{a:{l:{_:1}}}}}},e:{c:{e:{s:{s:{a:{r:{y:{_:1}}}}}}},r:{v:{e:{_:1,d:{_:1}}}}}},o:{f:{f:{i:{c:{i:{a:{l:{_:1}}}}}}},p:{e:{n:{e:{d:{_:1}}}}},r:{t:{h:{o:{d:{o:{x:{_:1}}}}}}},w:{n:{_:1}}},p:{a:{c:{k:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},i:{d:{_:1}},r:{a:{l:{l:{e:{l:{e:{d:{_:1}}}}}}}}},l:{a:{n:{n:{e:{d:{_:1}}}}},e:{a:{s:{a:{n:{t:{_:1,n:{e:{s:{s:{_:1}}}}}}}}}},u:{g:{_:1,g:{e:{d:{_:1}}}}}},o:{p:{u:{l:{a:{r:{_:1}}}}}},r:{e:{c:{e:{d:{e:{n:{t:{e:{d:{_:1}}}}}}}},d:{i:{c:{t:{a:{b:{l:{e:{_:1}}}}}}}},p:{a:{r:{e:{d:{_:1}}}}}},i:{n:{c:{i:{p:{l:{e:{d:{_:1}}}}}}}},o:{f:{e:{s:{s:{i:{o:{n:{a:{l:{_:1}}}}}}}}},t:{e:{c:{t:{e:{d:{_:1}}}}}},v:{o:{k:{e:{d:{_:1}}}}}}},u:{n:{i:{s:{h:{e:{d:{_:1}}}}}}}},q:{u:{a:{l:{i:{f:{i:{e:{d:{_:1}}}}}}},e:{n:{c:{h:{a:{b:{l:{e:{_:1}}}}}}}},o:{t:{e:{_:1}}}}},r:{a:{v:{e:{l:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},e:{a:{c:{h:{a:{b:{l:{e:{_:1}}}}}},l:{_:1,i:{s:{t:{i:{c:{_:1}}}}}},s:{o:{n:{a:{b:{l:{e:{_:1}}}}}}}},l:{a:{t:{e:{d:{_:1}}}},i:{a:{b:{l:{e:{_:1}}}}}},s:{o:{l:{v:{e:{d:{_:1}}}}},p:{o:{n:{s:{i:{v:{e:{_:1}}}}}}},t:{_:1}}},u:{l:{y:{_:1}}}},s:{_:1,a:{f:{e:{_:1}},i:{d:{_:1}},n:{i:{t:{a:{r:{y:{_:1}}}}}},t:{i:{s:{f:{a:{c:{t:{o:{r:{y:{_:1}}}}}},i:{e:{d:{_:1}}},y:{i:{n:{g:{_:1}}}}}}}},v:{o:{r:{y:{_:1}}}}},c:{a:{t:{h:{e:{d:{_:1}}}}},h:{e:{d:{u:{l:{e:{d:{_:1}}}}}}},r:{u:{p:{u:{l:{o:{u:{s:{_:1}}}}}}}}},e:{a:{l:{_:1,e:{d:{_:1}}},s:{o:{n:{a:{b:{l:{y:{_:1}}}}}}},t:{_:1}},e:{m:{l:{y:{_:1}}},n:{_:1}},l:{f:{i:{s:{h:{_:1}}}}},t:{t:{l:{e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},h:{a:{k:{a:{b:{l:{e:{_:1}}}}}}},i:{g:{n:{e:{d:{_:1}}}}},o:{l:{v:{e:{d:{_:1}}}}},p:{e:{a:{k:{a:{b:{l:{e:{_:1},y:{_:1}}}}}}},o:{i:{l:{e:{d:{_:1}}}},k:{e:{n:{_:1}}}}},t:{a:{b:{l:{e:{_:1}}}},o:{p:{p:{a:{b:{l:{e:{_:1}}}}}}},u:{c:{k:{_:1}}}},u:{b:{s:{t:{a:{n:{t:{i:{a:{t:{e:{d:{_:1}}}}}}}}}}},c:{c:{e:{s:{s:{f:{u:{l:{_:1}}}}}}}},i:{t:{a:{b:{l:{e:{_:1}}}}}},n:{g:{_:1}},p:{e:{r:{v:{i:{s:{e:{d:{_:1}}}}}}}},r:{e:{_:1}},s:{p:{e:{c:{t:{i:{n:{g:{_:1}}}}}}}}}},t:{a:{m:{e:{d:{_:1}}},n:{g:{l:{e:{_:1}}}},p:{p:{e:{d:{_:1}}}}},e:{n:{a:{b:{l:{e:{_:1}}}}}},h:{i:{n:{k:{a:{b:{l:{e:{_:1}}}}}}}},i:{e:{_:1,d:{_:1}},l:{_:1},m:{e:{l:{y:{_:1}}}}},o:{_:1,u:{c:{h:{a:{b:{l:{e:{_:1}}}},e:{d:{_:1}}}}},w:{a:{r:{d:{_:1}}}}},r:{a:{c:{e:{a:{b:{l:{e:{_:1}}}}}},i:{n:{e:{d:{_:1}}}}},e:{a:{t:{e:{d:{_:1}}}}},u:{e:{_:1},s:{t:{w:{o:{r:{t:{h:{y:{_:1}}}}}}}}}}},u:{s:{u:{a:{l:{_:1,l:{y:{_:1}}}}}}},v:{e:{i:{l:{_:1,i:{n:{g:{_:1}}}}}}},w:{a:{n:{t:{e:{d:{_:1}}}},r:{r:{a:{n:{t:{e:{d:{_:1}}}}}}},s:{h:{e:{d:{_:1}}}}},e:{l:{c:{o:{m:{e:{_:1}}}}}},i:{e:{l:{d:{y:{_:1}}}},l:{l:{i:{n:{g:{_:1}}}}},n:{d:{_:1}},s:{e:{_:1}},t:{t:{i:{n:{g:{_:1,l:{y:{_:1}}}}}}}},o:{r:{t:{h:{y:{_:1}}}}},r:{a:{p:{_:1,p:{i:{n:{g:{_:1}}}}}},i:{t:{t:{e:{n:{_:1}}}}}}},z:{i:{p:{_:1}}}},p:{_:1,b:{e:{a:{t:{_:1}}},r:{i:{n:{g:{i:{n:{g:{_:1}}}}}}}},c:{h:{u:{c:{k:{_:1}}}},o:{m:{i:{n:{g:{_:1}}}}}},d:{a:{t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},f:{r:{o:{n:{t:{_:1}}}}},g:{r:{a:{d:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}}},h:{e:{a:{v:{a:{l:{_:1}}}},l:{d:{_:1}}},i:{l:{l:{_:1}}},o:{l:{d:{_:1},s:{t:{e:{r:{y:{_:1}}}}}}}},k:{e:{e:{p:{_:1}}}},l:{i:{f:{t:{i:{n:{g:{_:1}}}}},n:{k:{_:1}}},o:{a:{d:{_:1,i:{n:{g:{_:1}}}}}}},o:{n:{_:1}},p:{e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}},t:{y:{_:1}}}},r:{i:{g:{h:{t:{_:1}}},s:{i:{n:{g:{_:1}}}}},o:{a:{r:{_:1}},o:{t:{_:1,e:{d:{_:1}}}}}},s:{_:1,c:{a:{l:{e:{_:1}}}},e:{t:{_:1,s:{_:1},t:{i:{n:{g:{_:1}}}}}},h:{o:{t:{_:1}}},i:{d:{e:{_:1}}},t:{a:{g:{e:{_:1,d:{_:1}}},i:{r:{s:{_:1}}},n:{d:{i:{n:{g:{_:1}}}}},r:{t:{_:1}},t:{e:{_:1}}}}},t:{a:{k:{e:{_:1}}},i:{g:{h:{t:{_:1}}}},o:{w:{n:{_:1}}}},w:{a:{r:{d:{_:1,s:{_:1}}}}}},r:{a:{n:{i:{u:{m:{_:1}}}}},b:{a:{n:{_:1}}},c:{h:{i:{n:{_:1}}}},e:{t:{h:{r:{a:{_:1}}}}},g:{e:{_:1,d:{_:1},n:{c:{y:{_:1}},t:{_:1,l:{y:{_:1}}}},s:{_:1}},i:{n:{g:{_:1}}}},i:{n:{a:{l:{_:1},r:{y:{_:1}},t:{e:{_:1},i:{n:{g:{_:1}},o:{n:{_:1}}}}},e:{_:1}}},n:{_:1,s:{_:1}},o:{l:{o:{g:{i:{s:{t:{_:1}}}}}}},s:{a:{r:{i:{n:{g:{_:1}}}}},h:{i:{f:{u:{_:1}}}}}},s:{_:1,a:{b:{l:{e:{_:1}}}},e:{_:1,d:{_:1},f:{u:{l:{_:1,n:{e:{s:{s:{_:1}}}}}}},l:{e:{s:{s:{_:1}}}},r:{_:1,s:{_:1}},s:{_:1}},h:{e:{r:{_:1,i:{n:{g:{_:1}}},s:{_:1}}}},i:{n:{g:{_:1}}},u:{a:{l:{_:1,l:{y:{_:1}}}}}},t:{e:{n:{s:{i:{l:{s:{_:1}}}}},r:{i:{n:{e:{_:1}}},u:{s:{_:1}}}},i:{l:{i:{t:{i:{e:{s:{_:1}}},y:{_:1}},z:{e:{_:1}}}}},m:{o:{s:{t:{_:1}}}},o:{p:{i:{a:{_:1}}}},t:{e:{r:{_:1,l:{y:{_:1}}}}}},x:{i:{e:{_:1}}}};