var atk = 20; // T
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_T"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_T_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 4);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 4);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 2, AG_WINDOW_VSPEED, -4);

//Looping
set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(atk, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(atk, 4, AG_WINDOW_TYPE, 7); //pratfall
set_window_value(atk, 4, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(atk, 6);

//Early hit
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 4);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -68);
set_hitbox_value(atk, 1, HG_WIDTH, 96);
set_hitbox_value(atk, 1, HG_HEIGHT, 32);
set_hitbox_value(atk, 1, HG_PRIORITY, 6);
set_hitbox_value(atk, 1, HG_SHAPE, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 2);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 2);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(atk, 1, HG_HITBOX_GROUP, 0);

//Looping hits
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 3);
set_hitbox_value(atk, 2, HG_LIFETIME, 3);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -64);
set_hitbox_value(atk, 2, HG_WIDTH, 96);
set_hitbox_value(atk, 2, HG_HEIGHT, 40);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_SHAPE, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 1);
set_hitbox_value(atk, 2, HG_ANGLE, 40);
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 3);
set_hitbox_value(atk, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(atk, 3, HG_LIFETIME, get_hitbox_value(atk, 2, HG_LIFETIME));
set_hitbox_value(atk, 3, HG_HITBOX_Y, get_hitbox_value(atk, 2, HG_HITBOX_Y));
set_hitbox_value(atk, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(atk, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(atk, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 4, HG_WINDOW, 3);
set_hitbox_value(atk, 4, HG_LIFETIME, get_hitbox_value(atk, 2, HG_LIFETIME));
set_hitbox_value(atk, 4, HG_HITBOX_Y, -36);
set_hitbox_value(atk, 4, HG_WIDTH, 50);
set_hitbox_value(atk, 4, HG_HEIGHT, 40);
set_hitbox_value(atk, 4, HG_PRIORITY, 2);
set_hitbox_value(atk, 4, HG_SHAPE, 2);
set_hitbox_value(atk, 4, HG_DAMAGE, 1);
set_hitbox_value(atk, 4, HG_ANGLE, 60);
set_hitbox_value(atk, 4, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 4, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(atk, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(atk, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(atk, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 5, HG_WINDOW, 3);
set_hitbox_value(atk, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(atk, 5, HG_LIFETIME, get_hitbox_value(atk, 4, HG_LIFETIME));
set_hitbox_value(atk, 5, HG_HITBOX_Y, get_hitbox_value(atk, 4, HG_HITBOX_Y));
set_hitbox_value(atk, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(atk, 5, HG_HITBOX_GROUP, 2);

//Final hit
set_hitbox_value(atk, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 6, HG_WINDOW, 4);
set_hitbox_value(atk, 6, HG_LIFETIME, 1);
set_hitbox_value(atk, 6, HG_HITBOX_Y, -48);
set_hitbox_value(atk, 6, HG_WIDTH, 64);
set_hitbox_value(atk, 6, HG_HEIGHT, 64);
set_hitbox_value(atk, 6, HG_PRIORITY, 3);
set_hitbox_value(atk, 6, HG_SHAPE, 0);
set_hitbox_value(atk, 6, HG_DAMAGE, 2);
set_hitbox_value(atk, 6, HG_ANGLE, 90);
set_hitbox_value(atk, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 6, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(atk, 6, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 6, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 6, HG_UNOWN_SCALING_BONUS, 0.15);
set_hitbox_value(atk, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 6, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, 6, HG_HITBOX_GROUP, 3);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.T, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("t" not in unown_dictionary) unown_dictionary.t = make_trie_T();
//================================================================
//contains words starting with T
#define make_trie_T()
    return {a:{_:1,b:{_:1,b:{y:{_:1}},l:{e:{_:1,a:{u:{_:1}},c:{l:{o:{t:{h:{_:1,s:{_:1}}}}}},s:{_:1,p:{o:{o:{n:{_:1}}}}},t:{_:1}},o:{i:{d:{_:1,s:{_:1}}}}},s:{_:1}},c:{h:{_:1,y:{c:{a:{r:{d:{i:{a:{_:1}}}}}}}},i:{t:{_:1}},k:{_:1,e:{d:{_:1}},l:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},s:{_:1},y:{_:1}},o:{_:1,s:{_:1}},t:{_:1,f:{u:{l:{_:1}}},i:{c:{_:1,a:{l:{_:1}},s:{_:1}},l:{e:{_:1}}}}},d:{_:1,p:{o:{l:{e:{_:1}}}}},e:{_:1},f:{f:{e:{t:{a:{_:1}}},y:{_:1}}},g:{_:1,g:{e:{d:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}},i:{l:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},l:{o:{w:{_:1}}},o:{r:{_:1,e:{d:{_:1}},s:{_:1}}},s:{_:1,p:{i:{n:{_:1}}}},w:{i:{n:{d:{_:1}}}}},n:{t:{_:1,e:{d:{_:1}}}}},j:{_:1,i:{r:{i:{_:1}}}},k:{e:{_:1,d:{o:{w:{n:{_:1}}}},n:{_:1},o:{f:{f:{_:1}},u:{t:{_:1}},v:{e:{r:{_:1}}}},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{_:1,g:{_:1}}}},l:{c:{u:{m:{_:1}}},e:{_:1,n:{t:{_:1,e:{d:{_:1}},l:{e:{s:{s:{_:1}}}},s:{_:1}}},s:{_:1}},i:{s:{m:{a:{n:{_:1}}}}},k:{_:1,a:{t:{i:{v:{e:{_:1}}}}},e:{d:{_:1},r:{_:1}},i:{e:{_:1},n:{g:{_:1}}},s:{_:1},y:{_:1}},l:{_:1,e:{r:{_:1},s:{t:{_:1}}},i:{e:{d:{_:1}}},y:{_:1}},o:{n:{f:{l:{a:{m:{e:{_:1}}}}},s:{_:1}}}},m:{a:{l:{e:{s:{_:1}}},t:{o:{_:1}}},b:{o:{u:{r:{i:{n:{e:{_:1}}}}}}},e:{_:1},m:{y:{_:1}},p:{e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},o:{n:{_:1,s:{_:1}}}}},n:{_:1,d:{e:{m:{_:1}}},g:{a:{_:1},e:{l:{a:{_:1}},n:{t:{_:1}},r:{i:{n:{e:{_:1}}}}},i:{b:{l:{e:{_:1}}}},l:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}},o:{_:1},r:{o:{w:{t:{h:{_:1}}}}}},k:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},n:{e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}}},t:{r:{i:{c:{_:1}},u:{m:{_:1,s:{_:1}}}}}},p:{_:1,a:{s:{_:1}},e:{_:1,d:{_:1},r:{e:{d:{_:1}}},s:{_:1},w:{o:{r:{m:{_:1}}}}},i:{n:{g:{_:1}},o:{c:{a:{_:1}}}},p:{e:{d:{_:1}},i:{n:{g:{_:1}}}},u:{b:{u:{l:{u:{_:1}}}},f:{i:{n:{i:{_:1}}}},k:{o:{k:{o:{_:1}}}},l:{e:{l:{e:{_:1}}}}}},r:{_:1,a:{n:{t:{u:{l:{a:{s:{_:1}}}}}}},d:{i:{n:{e:{s:{s:{_:1}}}}},y:{_:1}},g:{e:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},m:{a:{c:{_:1}}},n:{i:{s:{h:{_:1,e:{d:{_:1}}}}}},o:{t:{_:1}},p:{_:1},r:{a:{g:{o:{n:{_:1}}}},e:{d:{_:1}}},t:{_:1,a:{r:{_:1}},s:{_:1}},z:{a:{n:{_:1}}}},s:{_:1,k:{_:1,s:{_:1}},s:{e:{l:{s:{_:1}}}},t:{e:{_:1,d:{_:1},f:{u:{l:{_:1}}},s:{_:1}},i:{n:{g:{_:1}}},y:{_:1}}},t:{_:1,e:{_:1,r:{_:1}},t:{e:{r:{e:{d:{_:1}}}},l:{e:{_:1}},o:{o:{_:1,e:{d:{_:1}},s:{_:1}}}}},u:{_:1,g:{h:{t:{_:1}}},n:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},r:{o:{s:{_:1}}},t:{_:1}},v:{e:{r:{n:{_:1}}}},w:{d:{r:{y:{_:1}}}},x:{_:1,e:{d:{_:1},s:{_:1}},i:{_:1,c:{a:{b:{_:1}}},d:{e:{r:{m:{i:{s:{t:{_:1}}}}}}},n:{g:{_:1}},s:{_:1}},p:{a:{y:{e:{r:{_:1,s:{_:1}}}}}}}},e:{a:{_:1,c:{h:{_:1,e:{r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}},u:{p:{_:1}}},l:{_:1},m:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},m:{a:{t:{e:{_:1,s:{_:1}}}}},s:{_:1,t:{e:{r:{s:{_:1}}}}},w:{o:{r:{k:{_:1}}}}},p:{o:{t:{_:1}}},r:{_:1,f:{u:{l:{_:1}}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}},s:{_:1,e:{_:1,d:{_:1}},i:{n:{g:{_:1}}},p:{o:{o:{n:{_:1,s:{_:1}}}}}},t:{i:{m:{e:{_:1}}}}},c:{h:{n:{i:{c:{a:{l:{_:1,i:{t:{i:{e:{s:{_:1}}},y:{_:1}}},l:{y:{_:1}}}},i:{a:{n:{_:1,s:{_:1}}}}},q:{u:{e:{_:1,s:{_:1}}}}},o:{_:1,l:{o:{g:{i:{c:{a:{l:{_:1,l:{y:{_:1}}}}},e:{s:{_:1}}},y:{_:1}}}}}}},t:{o:{n:{i:{c:{_:1}}}}}},d:{_:1,d:{i:{u:{r:{s:{a:{_:1}}}}},y:{_:1}},i:{o:{u:{s:{_:1}}}}},e:{_:1,d:{_:1},m:{i:{n:{g:{_:1}}}},n:{_:1,a:{g:{e:{_:1,d:{_:1},r:{_:1,s:{_:1}}}}},s:{_:1,y:{_:1}},y:{_:1,b:{o:{p:{p:{e:{r:{_:1}}}}}}}},t:{e:{r:{_:1,i:{n:{g:{_:1}}}}},h:{_:1}}},l:{e:{g:{r:{a:{m:{_:1,s:{_:1}},p:{h:{_:1}}}}},k:{i:{n:{e:{s:{i:{s:{_:1}}},t:{i:{c:{_:1}}}}}}},m:{a:{r:{k:{e:{t:{i:{n:{g:{_:1}}}}}}}},e:{t:{r:{y:{_:1}}}}},p:{a:{t:{h:{i:{c:{_:1,a:{l:{l:{y:{_:1}}}}}},y:{_:1}}}},h:{o:{n:{e:{_:1,s:{_:1}}}}},o:{r:{t:{_:1,a:{t:{i:{o:{n:{_:1}}}}}}}}},s:{c:{o:{p:{e:{_:1},i:{c:{_:1}}}}}},t:{h:{o:{n:{_:1}}}},v:{i:{s:{e:{d:{_:1}},i:{o:{n:{_:1}}}}}},x:{_:1}},l:{_:1,e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}}},m:{p:{_:1,e:{r:{_:1,a:{m:{e:{n:{t:{_:1,a:{l:{_:1}}}}}},t:{u:{r:{e:{_:1,s:{_:1}}}}}},e:{d:{_:1}},s:{_:1}},s:{t:{_:1}}},l:{e:{_:1}},o:{_:1,r:{a:{r:{i:{l:{y:{_:1}}},y:{_:1}}}}},s:{_:1},t:{_:1,a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},r:{e:{s:{s:{_:1}}}}}}},n:{_:1,a:{c:{i:{o:{u:{s:{_:1}}},t:{y:{_:1}}}},n:{t:{_:1,s:{_:1}}}},d:{_:1,e:{d:{_:1},n:{c:{i:{e:{s:{_:1}}},y:{_:1}}},r:{_:1,n:{e:{s:{s:{_:1}}}}}},i:{n:{g:{_:1}}},o:{n:{_:1,i:{t:{i:{s:{_:1}}}},s:{_:1}}},s:{_:1}},e:{m:{e:{n:{t:{_:1}}}},t:{s:{_:1}}},n:{e:{r:{_:1}},i:{s:{_:1}}},o:{r:{_:1,s:{_:1}}},s:{_:1,e:{_:1},i:{o:{n:{_:1,s:{_:1}}}}},t:{_:1,a:{c:{o:{o:{l:{_:1}}},r:{u:{e:{l:{_:1}}}}},t:{i:{v:{e:{_:1}}}}},h:{_:1,s:{_:1}},s:{_:1}},u:{o:{u:{s:{_:1}}},r:{e:{_:1}}}},p:{i:{d:{_:1},g:{_:1}}},q:{u:{i:{l:{a:{_:1}}}}},r:{a:{v:{o:{l:{t:{_:1}}}}},i:{y:{a:{k:{i:{_:1}}}}},m:{_:1,i:{n:{a:{l:{_:1},t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}},o:{r:{_:1}}}},o:{l:{o:{g:{y:{_:1}}}}},u:{s:{_:1}}},t:{e:{s:{_:1}}}},s:{_:1}},r:{a:{_:1,c:{e:{_:1}},f:{o:{r:{m:{i:{n:{g:{_:1}}}}}}},i:{n:{_:1}},k:{i:{o:{n:{_:1}}}}},e:{s:{t:{r:{i:{a:{l:{_:1}}}}}}},i:{b:{l:{e:{_:1},y:{_:1}}},f:{i:{c:{_:1,a:{l:{l:{y:{_:1}}}}},e:{d:{_:1},s:{_:1}}},y:{_:1,i:{n:{g:{_:1}}}}},t:{o:{r:{i:{a:{l:{_:1}},e:{s:{_:1}}},y:{_:1}}}}},o:{r:{_:1,i:{s:{m:{_:1},t:{_:1,s:{_:1}}},z:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},s:{_:1}}},y:{_:1}}},s:{t:{_:1,a:{m:{e:{n:{t:{_:1}}}}},e:{d:{_:1}},i:{c:{l:{e:{_:1,s:{_:1}}},u:{l:{a:{r:{_:1}}}}},f:{i:{e:{d:{_:1},s:{_:1}}},y:{_:1,i:{n:{g:{_:1}}}}},m:{o:{n:{i:{e:{s:{_:1}}},y:{_:1}}}},n:{g:{_:1}}},o:{s:{t:{e:{r:{o:{n:{e:{_:1}}}}}}}},s:{_:1},y:{_:1}}},t:{_:1,a:{n:{u:{s:{_:1}}}},h:{e:{r:{_:1,b:{a:{l:{l:{_:1}}}}}}}},x:{a:{s:{_:1}},t:{_:1,b:{o:{o:{k:{_:1,s:{_:1}}}}},i:{l:{e:{_:1,s:{_:1}}}},s:{_:1},u:{r:{e:{_:1}}}}}},h:{a:{n:{_:1,k:{_:1,e:{d:{_:1}},f:{u:{l:{_:1,l:{y:{_:1}}}}},i:{n:{g:{_:1}}},l:{e:{s:{s:{_:1}}}},s:{_:1,g:{i:{v:{i:{n:{g:{_:1,s:{_:1}}}}}}}}}},t:{_:1,a:{w:{a:{y:{_:1}}}},c:{h:{e:{r:{_:1}}}}},w:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},e:{_:1,a:{t:{e:{r:{_:1,s:{_:1}}},r:{e:{_:1,s:{_:1}},i:{c:{a:{l:{_:1}},s:{_:1}}}}}},e:{_:1},f:{t:{_:1,s:{_:1}}},i:{r:{_:1,s:{_:1}}},m:{_:1,e:{_:1,d:{_:1},s:{_:1}},s:{e:{l:{v:{e:{s:{_:1}}}}}}},n:{_:1},o:{l:{o:{g:{i:{a:{n:{_:1}},c:{a:{l:{_:1}}}},y:{_:1}}}},r:{e:{m:{_:1},t:{i:{c:{a:{l:{_:1,l:{y:{_:1}}}}}}}},i:{e:{s:{_:1}}},y:{_:1}}},r:{a:{p:{e:{u:{t:{i:{c:{_:1}}}}},i:{s:{t:{_:1,s:{_:1}}}},y:{_:1}}},e:{_:1,a:{f:{t:{e:{r:{_:1}}}}},b:{y:{_:1}},f:{o:{r:{e:{_:1}}}},i:{n:{_:1}},o:{f:{_:1}},s:{_:1}},m:{a:{l:{_:1}},o:{m:{e:{t:{e:{r:{_:1}}}}},n:{u:{c:{l:{e:{a:{r:{_:1}}}}}}},s:{_:1,t:{a:{t:{_:1}}}}}}},s:{a:{u:{r:{u:{s:{_:1}}}}},e:{_:1,s:{_:1}},i:{s:{_:1}},p:{i:{a:{n:{_:1}}}}},t:{a:{_:1}},y:{_:1}},i:{c:{k:{_:1,e:{n:{i:{n:{g:{_:1}}},s:{_:1}},r:{_:1}}}},e:{f:{_:1},v:{e:{s:{_:1}},u:{l:{_:1}}}},g:{h:{_:1,s:{_:1}}},n:{_:1,e:{_:1},g:{_:1,s:{_:1}},k:{_:1,e:{r:{s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},l:{y:{_:1}},n:{e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}},s:{_:1}},r:{d:{_:1,s:{_:1}},s:{t:{_:1,y:{_:1}}},t:{e:{e:{n:{_:1,t:{h:{_:1}}}}},i:{e:{s:{_:1},t:{h:{_:1}}}},y:{_:1}}},s:{_:1,t:{l:{e:{_:1}}}}},o:{_:1,n:{g:{_:1,s:{_:1}}},r:{a:{c:{i:{c:{_:1}},o:{t:{o:{m:{y:{_:1}}}}}}},n:{_:1,s:{_:1}},o:{u:{g:{h:{_:1,l:{y:{_:1}}}}}},p:{e:{_:1}}},s:{e:{_:1}},u:{_:1,g:{h:{_:1,t:{_:1,f:{u:{l:{_:1,l:{y:{_:1}}}}},l:{e:{s:{s:{_:1}}}},s:{_:1}}}},s:{a:{n:{d:{_:1,s:{_:1}}}}}}},r:{a:{l:{l:{_:1}},s:{h:{_:1,i:{n:{g:{_:1}}}}}},e:{a:{d:{_:1,s:{_:1},y:{_:1}},t:{_:1,e:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},s:{_:1}}},e:{_:1,s:{o:{m:{e:{_:1}}}}},s:{h:{o:{l:{d:{_:1}}}}},w:{_:1}},i:{c:{e:{_:1}},f:{t:{_:1}},l:{l:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},v:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}},o:{a:{t:{_:1,s:{_:1}}},b:{b:{i:{n:{g:{_:1}}}}},h:{_:1},n:{e:{_:1,s:{_:1}}},t:{t:{l:{e:{_:1}}}},u:{g:{h:{_:1,o:{u:{t:{_:1}}},w:{a:{y:{_:1}}}}}},w:{_:1,e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},n:{_:1},s:{_:1}}},u:{_:1,s:{t:{_:1,e:{r:{s:{_:1}}},s:{_:1}}},w:{a:{y:{_:1}}}}},u:{g:{_:1,s:{_:1}},m:{b:{_:1,i:{n:{g:{_:1}}},p:{r:{i:{n:{t:{_:1}}}}},s:{_:1}},p:{_:1,i:{n:{g:{_:1}}}}},n:{d:{e:{r:{_:1,b:{i:{r:{d:{_:1}}},o:{l:{t:{_:1}}}},i:{n:{g:{_:1}}},o:{u:{s:{_:1}}},s:{t:{o:{r:{m:{_:1}}}}}}},u:{r:{u:{s:{_:1}}}}}},s:{_:1,l:{y:{_:1}}}},w:{a:{c:{k:{e:{y:{_:1}}}}}},y:{_:1,m:{e:{_:1}},r:{o:{i:{d:{_:1}}}},s:{e:{l:{f:{_:1}}}}}},i:{_:1,a:{r:{a:{_:1}}},b:{i:{a:{_:1}}},c:{_:1,k:{_:1,e:{d:{_:1},r:{_:1},t:{_:1,e:{d:{_:1}},s:{_:1}}},i:{n:{g:{_:1}}},l:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}},s:{h:{_:1}}}},s:{_:1}}},d:{a:{l:{_:1}},b:{i:{t:{s:{_:1}}}},e:{_:1,s:{_:1}},i:{n:{g:{s:{_:1}}}},y:{_:1,i:{n:{g:{_:1}}}}},e:{_:1,d:{_:1},r:{_:1},s:{_:1}},f:{f:{_:1,a:{n:{y:{_:1}}}}},g:{e:{r:{_:1,s:{_:1}}},h:{t:{_:1,e:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},r:{_:1}},l:{y:{_:1}},n:{e:{s:{s:{_:1}}}},r:{o:{p:{e:{_:1}}}},s:{_:1}}}},k:{i:{_:1}},l:{_:1,e:{_:1,s:{_:1}},l:{_:1,e:{r:{_:1}}},t:{_:1,e:{d:{_:1}}}},m:{b:{e:{r:{_:1,s:{_:1}}},r:{e:{_:1}},u:{r:{r:{_:1}}}},e:{_:1,d:{_:1},l:{e:{s:{s:{_:1}}},i:{n:{e:{_:1}}},y:{_:1}},r:{_:1,s:{_:1}},s:{_:1},t:{a:{b:{l:{e:{_:1}}}}}},i:{d:{_:1},n:{g:{_:1}}},o:{t:{h:{y:{_:1}}}},p:{a:{n:{i:{_:1}}}}},n:{_:1,f:{o:{i:{l:{_:1}}}},g:{_:1,l:{e:{_:1},i:{n:{g:{_:1}}},y:{_:1}}},i:{e:{s:{t:{_:1}}}},k:{e:{r:{e:{d:{_:1}},i:{n:{g:{_:1}}}}},l:{e:{_:1}}},s:{_:1,e:{l:{_:1}}},t:{e:{d:{_:1}}},y:{_:1}},p:{_:1,p:{e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},y:{_:1}},s:{_:1,y:{_:1}},t:{o:{e:{_:1,i:{n:{g:{_:1}}}}}}},r:{a:{m:{i:{s:{u:{_:1}}}}},e:{_:1,d:{_:1},l:{e:{s:{s:{_:1}}}},s:{_:1,o:{m:{e:{_:1}}}}},i:{n:{g:{_:1}}},t:{o:{u:{g:{a:{_:1}}}}}},s:{_:1,s:{u:{e:{_:1,s:{_:1}}}}},t:{a:{n:{_:1,i:{c:{_:1},u:{m:{_:1}}},s:{_:1}}},l:{e:{_:1,s:{_:1}}},s:{_:1},t:{i:{e:{s:{_:1}}},y:{_:1}}},z:{z:{y:{_:1}}}},m:{_:1},o:{_:1,a:{d:{_:1},s:{t:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}}}},b:{a:{c:{c:{o:{_:1}}}},y:{_:1}},d:{_:1,a:{y:{_:1}},d:{l:{e:{_:1,r:{_:1,s:{_:1}}}},y:{_:1}}},e:{_:1,d:{_:1},n:{a:{i:{l:{_:1,s:{_:1}}}}},s:{_:1}},f:{f:{e:{e:{_:1}}},u:{_:1}},g:{a:{_:1},e:{d:{e:{m:{a:{r:{u:{_:1}}}}}},k:{i:{s:{s:{_:1}}}},p:{i:{_:1}},t:{h:{e:{r:{_:1,n:{e:{s:{s:{_:1}}}}}}},i:{c:{_:1}}}}},i:{l:{e:{t:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}}},k:{e:{_:1,n:{_:1,s:{_:1}}}},l:{d:{_:1},e:{r:{a:{b:{l:{e:{_:1}}},n:{c:{e:{_:1}},t:{_:1}},t:{e:{_:1,d:{_:1}}}}}},l:{_:1,e:{r:{_:1}},s:{_:1}}},m:{_:1,a:{h:{a:{w:{k:{_:1}}}},t:{o:{_:1,e:{s:{_:1}}}}},b:{_:1,s:{_:1,t:{o:{n:{e:{_:1}}}}}},c:{a:{t:{_:1}}},e:{_:1},f:{o:{o:{l:{e:{r:{y:{_:1}}}}}}},m:{y:{_:1}},o:{r:{r:{o:{w:{_:1,s:{_:1}}}}}},s:{_:1}},n:{_:1,e:{_:1,d:{_:1},r:{_:1},s:{_:1}},g:{_:1,s:{_:1},u:{e:{_:1,s:{_:1}}}},i:{c:{_:1,s:{_:1}},g:{h:{t:{_:1}}}},n:{a:{g:{e:{_:1}}}},s:{_:1,i:{l:{_:1,s:{_:1}}}},y:{_:1}},o:{_:1,k:{_:1},l:{_:1,b:{o:{x:{_:1}}},s:{_:1}},n:{_:1,s:{_:1}},t:{_:1,h:{_:1,a:{c:{h:{e:{_:1}}}},b:{r:{u:{s:{h:{_:1,e:{s:{_:1}}}}}}},e:{d:{_:1}},p:{a:{s:{t:{e:{_:1}}}},i:{c:{k:{_:1,s:{_:1}}}}}},s:{_:1}}},p:{_:1,a:{z:{_:1}},e:{s:{_:1}},i:{c:{_:1,a:{l:{_:1}},s:{_:1}}},l:{e:{s:{s:{_:1}}}},n:{o:{t:{c:{h:{_:1}}}}},p:{e:{d:{_:1}},i:{n:{g:{_:1,s:{_:1}}}},l:{e:{_:1}}},s:{_:1,i:{d:{e:{_:1}}},y:{_:1}}},r:{_:1,a:{h:{_:1}},c:{h:{_:1,e:{d:{_:1},s:{_:1}},i:{c:{_:1},n:{g:{_:1}}}}},e:{_:1},k:{o:{a:{l:{_:1}}}},m:{e:{n:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},n:{_:1,a:{d:{o:{_:1},u:{s:{_:1}}}}},o:{_:1},p:{e:{d:{o:{_:1,e:{d:{_:1},s:{_:1}}}}}},q:{u:{e:{_:1}}},r:{a:{c:{a:{t:{_:1}}}},e:{n:{t:{_:1}}},i:{d:{_:1}}},s:{o:{_:1}},t:{e:{r:{r:{a:{_:1}}}},i:{l:{l:{a:{s:{_:1}}}},o:{u:{s:{_:1}}}},o:{i:{s:{e:{_:1}}}},u:{r:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},o:{u:{s:{_:1}}}}}},y:{_:1}},s:{h:{_:1},s:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},t:{a:{l:{_:1,e:{d:{_:1}},l:{e:{d:{_:1}},y:{_:1}},s:{_:1}}},e:{_:1,m:{_:1}},i:{n:{g:{_:1}}},o:{d:{i:{l:{e:{_:1}}}}},s:{_:1}},u:{c:{a:{n:{n:{o:{n:{_:1}}}}},h:{_:1,d:{o:{w:{n:{_:1,s:{_:1}}}}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},s:{t:{o:{n:{e:{_:1}}}}},y:{_:1}}},g:{h:{_:1,e:{n:{_:1},r:{_:1},s:{t:{_:1}}},n:{e:{s:{s:{_:1}}}}}},p:{e:{e:{_:1}}},r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},s:{m:{_:1},t:{_:1,s:{_:1}}}},n:{a:{m:{e:{n:{t:{_:1,s:{_:1}}}}}}},s:{_:1}}},w:{_:1,a:{r:{d:{_:1,s:{_:1}}}},e:{d:{_:1},l:{_:1,s:{_:1}},r:{_:1,s:{_:1}}},n:{_:1,h:{o:{u:{s:{e:{_:1}}}}},i:{e:{_:1,s:{_:1}}},s:{_:1,f:{o:{l:{k:{_:1}}}},p:{e:{o:{p:{l:{e:{_:1}}}}}}}}},x:{a:{p:{e:{x:{_:1}}}},e:{l:{_:1}},i:{c:{_:1,i:{t:{y:{_:1}}},o:{l:{o:{g:{y:{_:1}}}}},r:{o:{a:{k:{_:1}}}}},n:{_:1,s:{_:1}}},o:{p:{l:{a:{s:{m:{o:{s:{i:{s:{_:1}}}}}}}}}},t:{r:{i:{c:{i:{t:{y:{_:1}}}}}}}},y:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},r:{a:{c:{e:{_:1,d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}},k:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},t:{i:{o:{n:{_:1}}},o:{r:{_:1,s:{_:1}}}}},d:{e:{_:1,d:{_:1},m:{a:{r:{k:{_:1}}}},o:{f:{f:{_:1}}},r:{_:1},s:{_:1}},i:{n:{g:{_:1}},t:{i:{o:{n:{_:1,a:{l:{_:1,l:{y:{_:1}}}},s:{_:1}}}}}}},f:{f:{i:{c:{_:1,k:{e:{r:{_:1}},i:{n:{g:{_:1}}}}}}}},g:{e:{d:{i:{e:{s:{_:1}}},y:{_:1}}},i:{c:{_:1,a:{l:{l:{y:{_:1}}}}}}},i:{l:{_:1,e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},n:{_:1,e:{d:{_:1},e:{_:1,s:{_:1}},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},p:{s:{e:{_:1},i:{n:{g:{_:1}}}}},t:{_:1,o:{r:{_:1,s:{_:1}}},s:{_:1}}},j:{e:{c:{t:{o:{r:{y:{_:1}}}}}}},m:{_:1,p:{_:1,l:{e:{_:1},i:{n:{g:{_:1}}}},s:{_:1}}},n:{c:{e:{_:1}},q:{u:{i:{l:{_:1,i:{t:{y:{_:1}},z:{e:{r:{_:1}}}},l:{_:1}}}}},s:{_:1,a:{c:{t:{i:{o:{n:{_:1,s:{_:1}}}}}},t:{l:{a:{n:{t:{i:{c:{_:1}}}}}}}},c:{e:{n:{d:{e:{n:{t:{_:1}}},s:{_:1}}}},r:{i:{p:{t:{_:1,s:{_:1}}}}}},f:{e:{r:{_:1,e:{n:{c:{e:{_:1}}}},r:{e:{d:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}}},o:{r:{m:{_:1,a:{t:{i:{o:{n:{_:1}}}}},e:{d:{_:1}}}}},u:{s:{i:{o:{n:{_:1,s:{_:1}}}}}}},g:{e:{n:{i:{c:{_:1}}}},r:{e:{s:{s:{i:{o:{n:{_:1,s:{_:1}}}}}}}}},i:{e:{n:{t:{_:1}}},s:{t:{o:{r:{_:1}}}},t:{_:1,i:{o:{n:{_:1,a:{l:{_:1}}}}}}},l:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}},o:{r:{_:1,s:{_:1}}}}}},m:{i:{s:{s:{i:{o:{n:{_:1,s:{_:1}}}}}},t:{_:1,t:{e:{d:{_:1},r:{_:1,s:{_:1}}}}}}},p:{a:{r:{e:{n:{t:{_:1}}}}},i:{r:{e:{d:{_:1}}}},l:{a:{n:{t:{_:1}}}},o:{n:{d:{e:{r:{_:1}}}},r:{t:{_:1,a:{t:{i:{o:{n:{_:1}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}}},s:{e:{x:{u:{a:{l:{_:1}}}}}},v:{e:{s:{t:{i:{t:{e:{_:1,s:{_:1}}}}}}}}}},p:{_:1,e:{z:{e:{_:1}}},i:{n:{c:{h:{_:1}}}},p:{e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1,s:{_:1}}}}},s:{_:1}},s:{h:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},y:{_:1}}},t:{t:{o:{r:{i:{a:{_:1}}}}}},u:{m:{a:{_:1,s:{_:1},t:{i:{c:{_:1},z:{e:{d:{_:1}},i:{n:{g:{_:1}}}}}}}}},v:{e:{l:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},l:{e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}},s:{_:1}},r:{s:{e:{_:1}}},s:{t:{y:{_:1}}}}},w:{l:{e:{r:{_:1}}}},y:{_:1,s:{_:1}}},e:{a:{c:{h:{e:{r:{o:{u:{s:{_:1}}},y:{_:1}}}}},d:{_:1,m:{i:{l:{l:{_:1}}}},s:{_:1}},s:{o:{n:{_:1}},u:{r:{e:{_:1,d:{_:1},r:{_:1},s:{_:1}},y:{_:1}}}},t:{_:1,a:{b:{l:{e:{_:1}}}},e:{d:{_:1},r:{s:{_:1}}},i:{e:{s:{_:1}},n:{g:{_:1}}},m:{e:{n:{t:{_:1,s:{_:1}}}}},s:{_:1},y:{_:1}}},e:{_:1,c:{k:{o:{_:1}}},s:{_:1}},k:{_:1},l:{l:{i:{s:{_:1}}}},m:{b:{l:{e:{_:1},i:{n:{g:{_:1}}}}},e:{n:{d:{o:{u:{s:{_:1,l:{y:{_:1}}}}}}}},o:{r:{_:1,s:{_:1}}}},n:{c:{h:{_:1,e:{s:{_:1}}}},d:{_:1,s:{_:1},y:{_:1}}},s:{p:{a:{s:{s:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}}}}}},v:{e:{n:{a:{n:{t:{_:1}}}}}},y:{_:1}},i:{_:1,a:{d:{_:1},g:{e:{_:1}},l:{_:1,s:{_:1}},n:{g:{l:{e:{_:1}},u:{l:{a:{r:{_:1}}}}}}},b:{a:{l:{_:1}},e:{_:1},u:{l:{a:{t:{i:{o:{n:{s:{_:1}}}}}}},n:{a:{l:{_:1}},e:{_:1}},t:{e:{_:1}}}},c:{e:{p:{s:{_:1}}},k:{_:1,e:{d:{_:1},r:{y:{_:1}}},i:{e:{r:{_:1}},n:{g:{_:1}}},l:{e:{_:1}},s:{_:1,t:{e:{r:{_:1}}}},y:{_:1}},y:{c:{l:{e:{_:1}}}}},d:{e:{n:{t:{_:1}}}},e:{d:{_:1},s:{_:1}},f:{e:{c:{t:{a:{_:1}}}},l:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},g:{_:1,g:{e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},o:{n:{o:{m:{e:{t:{r:{y:{_:1}}}}}}}}},l:{l:{i:{o:{n:{_:1}}}},o:{g:{y:{_:1}}}},m:{_:1,e:{s:{t:{e:{r:{_:1}}}}},m:{e:{d:{_:1},r:{s:{_:1}}},i:{n:{g:{s:{_:1}}}}}},n:{i:{t:{y:{_:1}}},k:{e:{t:{_:1,s:{_:1}}}}},o:{_:1},p:{_:1,e:{_:1},l:{e:{_:1,d:{_:1},t:{s:{_:1}}},i:{c:{a:{t:{e:{_:1}}}}}},p:{e:{d:{_:1}},i:{n:{g:{_:1}}},y:{_:1}},s:{_:1}},t:{e:{_:1}},u:{m:{p:{h:{_:1,e:{d:{_:1}},s:{_:1}}}}},v:{i:{a:{l:{_:1}}}}},o:{l:{l:{_:1,i:{n:{g:{_:1}}},o:{p:{_:1}},s:{_:1}}},m:{b:{o:{n:{e:{_:1}}}}},o:{p:{_:1,e:{r:{_:1,s:{_:1}}},s:{_:1}}},p:{_:1,h:{i:{e:{s:{_:1}}},y:{_:1}},i:{c:{_:1,a:{l:{_:1}},s:{_:1}},u:{s:{_:1}}}},t:{_:1,t:{i:{n:{g:{_:1}}}}},u:{b:{a:{d:{o:{u:{r:{_:1}}}}},l:{e:{_:1,d:{_:1},m:{a:{k:{e:{r:{_:1,s:{_:1}}}}}},s:{_:1,o:{m:{e:{_:1}}}}},i:{n:{g:{_:1}}}}},p:{e:{_:1,r:{_:1}},p:{l:{e:{_:1}}}},s:{e:{r:{_:1,s:{_:1}}}},t:{_:1}},v:{e:{_:1}},y:{_:1}},u:{a:{n:{t:{_:1}}},b:{b:{i:{s:{h:{_:1}}}}},c:{e:{_:1},k:{_:1,e:{r:{s:{_:1}}},l:{o:{a:{d:{_:1}}}},s:{_:1}}},e:{_:1,r:{_:1},s:{t:{_:1}}},f:{f:{l:{e:{_:1,s:{_:1}}}}},l:{y:{_:1}},m:{b:{e:{a:{k:{_:1}}}},p:{_:1,e:{t:{_:1,s:{_:1}}},s:{_:1}}},n:{k:{_:1,s:{_:1}}},s:{s:{_:1,e:{d:{_:1}}},t:{_:1,e:{d:{_:1},e:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1},w:{o:{r:{t:{h:{y:{_:1}}}}}},y:{_:1}}},t:{h:{_:1,f:{u:{l:{_:1,l:{y:{_:1}}}}},s:{_:1}}}},y:{_:1,i:{n:{g:{_:1}}},o:{u:{t:{_:1,s:{_:1}}}}}},s:{a:{r:{e:{e:{n:{a:{_:1}}}}}},k:{_:1},u:{n:{a:{m:{i:{_:1}}}}}},u:{b:{_:1,a:{_:1},b:{y:{_:1}},e:{_:1,r:{s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},c:{k:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}}}},g:{_:1},i:{t:{i:{o:{n:{_:1}}}}},l:{a:{r:{e:{m:{i:{a:{_:1}}}}}},i:{p:{_:1}},l:{e:{_:1}}},m:{b:{l:{e:{_:1,r:{_:1}},i:{n:{g:{_:1}}}}},m:{y:{_:1}},o:{r:{_:1,s:{_:1}}}},n:{a:{_:1},d:{r:{a:{_:1}}},e:{_:1,d:{_:1},s:{_:1}},g:{_:1},i:{c:{_:1},n:{g:{_:1}}},n:{e:{l:{_:1,s:{_:1}}}}},r:{b:{a:{n:{_:1}},i:{n:{e:{_:1}}},o:{_:1,b:{l:{a:{z:{e:{_:1}}}}}},u:{l:{e:{n:{c:{e:{_:1}},t:{_:1}}}}}},d:{_:1,s:{_:1}},f:{_:1},k:{_:1,e:{y:{_:1,s:{_:1}}},s:{_:1}},m:{o:{i:{l:{_:1}}}},n:{_:1,a:{r:{o:{u:{n:{d:{_:1}}}}}},c:{o:{a:{t:{_:1}}}},d:{o:{w:{n:{_:1}}}},e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}},p:{s:{_:1}}},o:{u:{t:{_:1}}},p:{i:{k:{e:{_:1}}}},s:{_:1}},q:{u:{o:{i:{s:{e:{_:1}}}}}},r:{e:{t:{_:1}}},t:{l:{e:{_:1,n:{e:{c:{k:{_:1}}}},s:{_:1}}},o:{n:{a:{t:{o:{r:{_:1}}}}}},w:{i:{g:{_:1}}}},v:{y:{_:1}}},s:{h:{_:1,i:{e:{_:1}},y:{_:1}},k:{_:1},s:{l:{e:{_:1}}}},t:{_:1,o:{r:{_:1,i:{n:{g:{_:1}}},s:{_:1}}},t:{i:{_:1}},u:{_:1}},x:{_:1,e:{d:{o:{_:1,s:{_:1}}},s:{_:1}}}},w:{a:{i:{n:{_:1}},s:{_:1}},e:{a:{k:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},e:{d:{_:1,l:{e:{_:1}}},n:{_:1},t:{_:1},z:{e:{_:1}}},l:{f:{t:{h:{_:1}}},v:{e:{_:1}}},n:{t:{i:{e:{s:{_:1},t:{h:{_:1}}}},y:{_:1}}},r:{p:{_:1}}},i:{c:{e:{_:1}},g:{_:1,s:{_:1}},l:{i:{g:{h:{t:{_:1}}}}},n:{_:1,e:{_:1,e:{d:{l:{e:{_:1}}}}},g:{e:{_:1}},k:{l:{e:{_:1}}},s:{_:1}},r:{l:{_:1}},s:{t:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}}},t:{_:1,c:{h:{_:1,i:{n:{g:{_:1}}},y:{_:1}}},s:{_:1}}},o:{_:1,s:{_:1,o:{m:{e:{_:1}}}}}},y:{c:{o:{o:{n:{_:1}}}},i:{n:{g:{_:1}}},k:{e:{s:{_:1}}},m:{p:{o:{l:{e:{_:1}}}}},n:{a:{m:{o:{_:1}}}},p:{e:{_:1,d:{_:1},n:{u:{l:{l:{_:1}}}},s:{_:1},w:{r:{i:{t:{e:{r:{_:1}}}}}}},h:{l:{o:{s:{i:{o:{n:{_:1}}}}}},o:{i:{d:{_:1}}}},i:{c:{a:{l:{_:1,l:{y:{_:1}}}}},n:{g:{_:1}},s:{t:{_:1}}},o:{_:1}},r:{a:{n:{i:{t:{a:{r:{_:1}}}},n:{y:{_:1}},t:{_:1,r:{u:{m:{_:1}}},s:{_:1}}}},e:{_:1,s:{_:1}},o:{g:{u:{e:{_:1}}}},u:{n:{t:{_:1}}}}}};