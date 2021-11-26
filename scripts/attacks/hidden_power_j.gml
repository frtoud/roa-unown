var atk = 10; // J
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_J"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_J_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 6);

//Startup
set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);
//Active
set_window_value(atk, 2, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
//Endlag (on miss grab)
set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, 3, AG_WINDOW_GOTO, 9); //ends move

//grab: swing
set_window_value(atk, 4, AG_WINDOW_LENGTH, 9);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, 4, AG_WINDOW_HITPAUSE_FRAME, 6);
set_window_value(atk, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 4, AG_WINDOW_SFX, sound_get("rse_throw"));
set_window_value(atk, 4, AG_WINDOW_SFX_FRAME, 3);
//grab: eject
set_window_value(atk, 5, AG_WINDOW_LENGTH, 4);
set_window_value(atk, 5, AG_WINDOW_HSPEED, 1);
set_window_value(atk, 5, AG_WINDOW_VSPEED, -3);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 10);
//grab: endlag
set_window_value(atk, 6, AG_WINDOW_LENGTH, 24);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(atk, 2);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 12);
set_hitbox_value(atk, 1, HG_HITBOX_X, -16);
set_hitbox_value(atk, 1, HG_HITBOX_Y, 16);
set_hitbox_value(atk, 1, HG_WIDTH, 40);
set_hitbox_value(atk, 1, HG_HEIGHT, 48);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 5);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, 1, HG_TECHABLE, 3);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(atk, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, 0);

//grabbed victim's target positions during window 4
unown_j_positions[0] = { x: -16, y:  16 };
unown_j_positions[1] = { x: -28, y:  12 };
unown_j_positions[2] = { x: -40, y:   4 };
unown_j_positions[3] = { x: -50, y:  -8 };
unown_j_positions[4] = { x: -54, y: -22 };
unown_j_positions[5] = { x: -56, y: -38 };
unown_j_positions[6] = { x: -52, y: -50 };
unown_j_positions[7] = { x: -42, y: -62 };
unown_j_positions[8] = { x: -36, y: -68 };

//grab eject
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 5);
set_hitbox_value(atk, 2, HG_LIFETIME, 2);
set_hitbox_value(atk, 2, HG_HITBOX_X, -36);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -68);
set_hitbox_value(atk, 2, HG_WIDTH, 6);
set_hitbox_value(atk, 2, HG_HEIGHT, 6);
set_hitbox_value(atk, 2, HG_PRIORITY, 3);
set_hitbox_value(atk, 2, HG_DAMAGE, 2);
set_hitbox_value(atk, 2, HG_ANGLE, 70);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .40);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, 1);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.J, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("j" not in unown_dictionary) unown_dictionary.j = make_trie_J();
//================================================================
//contains words starting with J
#define make_trie_J()
    return {a:{b:{_:1,b:{e:{r:{_:1,i:{n:{g:{_:1}}}}}},o:{t:{_:1}},s:{_:1}},c:{k:{_:1,a:{l:{_:1,s:{_:1}},s:{s:{_:1,e:{s:{_:1}}}}},e:{d:{_:1},r:{s:{_:1}},t:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},p:{o:{t:{_:1}}},s:{_:1}}},d:{e:{_:1,d:{_:1}}},g:{_:1,g:{e:{r:{_:1}}},s:{_:1},u:{a:{r:{_:1,s:{_:1}}}}},i:{l:{_:1,b:{i:{r:{d:{_:1}}},r:{e:{a:{k:{_:1}}}}},e:{d:{_:1}},h:{o:{u:{s:{e:{_:1}}}}}}},k:{e:{_:1}},l:{o:{p:{y:{_:1}}}},m:{_:1,b:{o:{r:{e:{e:{_:1}}}}},m:{e:{d:{_:1},r:{_:1}},i:{e:{s:{_:1}},n:{g:{_:1}}}},s:{_:1}},n:{e:{_:1},i:{t:{o:{r:{_:1,i:{a:{l:{_:1}}},s:{_:1}}}}},g:{m:{o:{o:{_:1}}}}},p:{a:{n:{_:1}}},r:{_:1,g:{o:{n:{_:1}}},r:{i:{n:{g:{_:1}}}},s:{_:1}},s:{m:{i:{n:{e:{_:1}}}},p:{e:{r:{_:1}}}},u:{n:{d:{i:{c:{e:{_:1}}}},t:{_:1}}},v:{a:{_:1},e:{l:{i:{n:{_:1}}}}},w:{_:1,b:{o:{n:{e:{_:1}}}},e:{d:{_:1}},s:{_:1}},y:{_:1,w:{a:{l:{k:{i:{n:{g:{_:1}}}}}}}},z:{z:{_:1,e:{d:{_:1}}}}},e:{a:{l:{o:{u:{s:{_:1,y:{_:1}}}}},n:{_:1,s:{_:1}}},e:{p:{_:1,e:{r:{s:{_:1}}},s:{_:1}},z:{_:1}},f:{e:{_:1}},l:{l:{_:1,i:{e:{s:{_:1}},c:{e:{n:{t:{_:1}}}}},y:{_:1,b:{e:{a:{n:{_:1}}}},f:{i:{s:{h:{_:1}}}}}}},n:{n:{y:{_:1}}},o:{p:{a:{r:{d:{i:{z:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},y:{_:1}}}}}},r:{k:{_:1,e:{d:{_:1}},i:{n:{_:1,g:{_:1}}},s:{_:1},y:{_:1}},r:{i:{e:{s:{_:1}}},y:{_:1}},s:{e:{y:{_:1,s:{_:1}}}}},s:{s:{_:1,e:{_:1}},t:{_:1,e:{r:{_:1}}},u:{i:{t:{_:1,s:{_:1}}}}},t:{_:1,s:{_:1},t:{i:{s:{o:{n:{_:1}}}}}},w:{_:1,e:{l:{_:1,e:{r:{_:1,s:{_:1}}},l:{e:{r:{y:{_:1}}}},r:{y:{_:1}},s:{_:1}}},s:{_:1}},z:{e:{b:{e:{l:{_:1}}}}}},i:{b:{_:1},f:{f:{_:1,y:{_:1}}},g:{_:1,g:{l:{e:{_:1},i:{n:{g:{_:1}}},y:{_:1,p:{u:{f:{f:{_:1}}}}}}},s:{a:{w:{_:1}}}},h:{a:{d:{_:1}}},l:{l:{_:1},t:{e:{d:{_:1}}}},m:{i:{n:{y:{_:1}}},m:{i:{e:{s:{_:1}}},y:{_:1}}},n:{_:1,g:{l:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}},x:{_:1}},t:{t:{e:{r:{s:{_:1},y:{_:1}}}}},r:{a:{c:{h:{i:{_:1}}}}}},o:{_:1,b:{_:1,l:{e:{s:{s:{_:1}}}},s:{_:1}},c:{k:{_:1,e:{y:{_:1,s:{_:1}}},s:{_:1,t:{r:{a:{p:{_:1}}}}}}},e:{_:1,s:{_:1},y:{_:1}},g:{_:1,g:{e:{r:{_:1}},i:{n:{g:{_:1}}}}},h:{n:{_:1,n:{y:{_:1}},s:{_:1}}},i:{n:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1},t:{_:1,s:{_:1}}}},k:{e:{_:1,d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}},l:{l:{i:{e:{s:{_:1}}},y:{_:1}},t:{_:1,e:{o:{n:{_:1}}},i:{k:{_:1}}}},n:{e:{s:{_:1}}},r:{d:{a:{n:{_:1}}}},s:{e:{p:{h:{_:1}}},h:{_:1}},t:{_:1,t:{e:{d:{_:1}}}},u:{r:{n:{a:{l:{_:1,i:{s:{m:{_:1},t:{_:1,i:{c:{_:1}},s:{_:1}}}},s:{_:1}}},e:{y:{_:1,e:{d:{_:1}},s:{_:1}}}}},s:{t:{_:1}}},y:{_:1,f:{u:{l:{_:1}}},o:{u:{s:{_:1}}},s:{_:1,t:{i:{c:{k:{_:1}}}}}}},u:{b:{i:{l:{e:{e:{_:1}}}}},d:{a:{s:{_:1}},g:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1}}}},s:{_:1}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1,a:{l:{_:1}},s:{_:1}}}}}},i:{c:{i:{a:{l:{_:1},r:{y:{_:1}}}}}},o:{_:1}},g:{_:1,g:{e:{r:{n:{a:{u:{t:{_:1}}}}}},l:{e:{_:1},i:{n:{g:{_:1}}}}},h:{e:{a:{d:{_:1}}}},s:{_:1},u:{l:{a:{r:{_:1}}}}},i:{c:{e:{_:1,d:{_:1},s:{_:1}},y:{_:1}}},j:{i:{t:{s:{u:{_:1}}}}},k:{e:{_:1,b:{o:{x:{_:1}}}}},l:{e:{p:{_:1}}},m:{b:{l:{e:{_:1,d:{_:1}}},o:{_:1}},p:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1,u:{i:{t:{_:1}}}},y:{_:1},l:{u:{f:{f:{_:1}}}}}},n:{c:{t:{i:{o:{n:{_:1}}},u:{r:{e:{_:1}}}}},g:{l:{e:{_:1,s:{_:1}}}},i:{o:{r:{_:1,s:{_:1}}},p:{e:{r:{_:1}}}},k:{_:1,i:{e:{_:1,s:{_:1}}},y:{_:1,a:{r:{d:{_:1}}}}}},r:{i:{e:{s:{_:1}},s:{d:{i:{c:{t:{i:{o:{n:{_:1}}}}}}}}},o:{r:{_:1,s:{_:1}}},y:{_:1}},s:{_:1,t:{_:1,i:{c:{e:{_:1}},f:{i:{a:{b:{l:{e:{_:1}}}},c:{a:{t:{i:{o:{n:{_:1}}}}}},e:{d:{_:1},s:{_:1}}},y:{_:1}}}}},t:{_:1},v:{e:{n:{i:{l:{e:{_:1}}}}}}},y:{n:{x:{_:1}}}};