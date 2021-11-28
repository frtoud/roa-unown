var atk = 2; // B
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_B"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_B_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 6);

//startup
set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 7);

//active (early)
set_window_value(atk, 2, AG_WINDOW_LENGTH, 4);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//active (falling)
set_window_value(atk, 3, AG_WINDOW_LENGTH, 3);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 3, AG_WINDOW_GOTO, 6); //ends move early unless held

//Bounce
set_window_value(atk, 4, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 4, AG_WINDOW_SFX, asset_get("sfx_frog_nspecial_shove"));
set_window_value(atk, 4, AG_WINDOW_SFX_FRAME, 7);

//Bounce Active
set_window_value(atk, 5, AG_WINDOW_LENGTH, 15);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, 5, AG_WINDOW_VSPEED, -13);

//Endlag
set_window_value(atk, 6, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(atk, 3);

//first hit
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 4);
set_hitbox_value(atk, 1, HG_HITBOX_Y, 2);
set_hitbox_value(atk, 1, HG_WIDTH, 48);
set_hitbox_value(atk, 1, HG_HEIGHT, 48);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 85);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 6);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 1, HG_UNOWN_SCALING_BONUS, 0.15);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//Falling hit
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 3);
set_hitbox_value(atk, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(atk, 2, HG_LIFETIME, 1);
set_hitbox_value(atk, 2, HG_WIDTH, 40);
set_hitbox_value(atk, 2, HG_HEIGHT, 40);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 2);
set_hitbox_value(atk, 2, HG_ANGLE, 75);
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(atk, 2, HG_UNOWN_DAMAGE_BONUS, 2);
set_hitbox_value(atk, 2, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//Rising hit
set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 5);
set_hitbox_value(atk, 3, HG_LIFETIME, 12);
set_hitbox_value(atk, 3, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 3, HG_WIDTH, 48);
set_hitbox_value(atk, 3, HG_HEIGHT, 48);
set_hitbox_value(atk, 3, HG_PRIORITY, 2);
set_hitbox_value(atk, 3, HG_DAMAGE, 6);
set_hitbox_value(atk, 3, HG_ANGLE, 90);
set_hitbox_value(atk, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 3, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(atk, 3, HG_UNOWN_DAMAGE_BONUS, 4);
set_hitbox_value(atk, 3, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 3, HG_UNOWN_SCALING_BONUS, 0.25);
set_hitbox_value(atk, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, 3, HG_HITBOX_GROUP, 2);


//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.B, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.B, 5, AG_UNOWN_WINDOW_ACTIVE, true);
if ("b" not in unown_dictionary) unown_dictionary.b = make_trie_B();
//================================================================
//contains words starting with B
#define make_trie_B()
    return {a:{_:1,a:{_:1},b:{a:{_:1},b:{l:{e:{_:1},i:{n:{g:{_:1}}}}},e:{_:1,s:{_:1}},i:{e:{s:{_:1}}},o:{o:{n:{_:1,s:{_:1}}}},u:{_:1},y:{_:1,s:{i:{t:{t:{e:{r:{_:1,s:{_:1}}}}}}}}},c:{h:{_:1,e:{l:{o:{r:{_:1,e:{t:{t:{e:{_:1}}}},s:{_:1}}}}}},k:{_:1,b:{o:{n:{e:{_:1}}}},d:{o:{o:{r:{_:1}}},r:{o:{p:{_:1}}}},e:{d:{_:1},r:{_:1}},f:{i:{r:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},g:{a:{m:{m:{o:{n:{_:1}}}}},r:{o:{u:{n:{d:{_:1}}}}}},h:{a:{n:{d:{_:1}}}},i:{n:{g:{_:1}}},p:{a:{c:{k:{_:1,i:{n:{g:{_:1}}},s:{_:1}}}}},r:{o:{o:{m:{_:1}}}},s:{_:1,e:{a:{t:{_:1}}},i:{d:{e:{_:1}}},l:{i:{d:{e:{_:1}}}},t:{a:{b:{b:{i:{n:{g:{_:1}}}}},g:{e:{_:1}}},r:{e:{e:{t:{_:1}}},o:{k:{e:{_:1}}}}}},u:{p:{_:1,s:{_:1}}},w:{a:{r:{d:{_:1,s:{_:1}}}}},y:{a:{r:{d:{_:1}}}}},o:{n:{_:1}},t:{e:{r:{i:{a:{_:1,l:{_:1}}}}}}},d:{_:1,d:{e:{r:{_:1},s:{t:{_:1}}}},g:{e:{_:1,r:{e:{d:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}}},l:{y:{_:1}},m:{i:{n:{t:{o:{n:{_:1}}}}}},n:{e:{s:{s:{_:1}}}}},f:{f:{l:{e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},g:{_:1,e:{l:{_:1,s:{_:1}}},g:{a:{g:{e:{_:1}}},e:{d:{_:1}},i:{e:{s:{_:1}},n:{g:{_:1}}},y:{_:1}},m:{a:{n:{_:1}}},p:{i:{p:{e:{s:{_:1}}}}},s:{_:1},o:{n:{_:1}}},h:{_:1},i:{l:{_:1,e:{d:{_:1},y:{_:1}},i:{f:{f:{_:1,s:{_:1}}},n:{g:{_:1}}},s:{_:1}},t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},k:{e:{_:1,d:{_:1},r:{_:1,i:{e:{s:{_:1}}},s:{_:1},y:{_:1}},s:{_:1}},i:{n:{g:{_:1}}},l:{a:{v:{a:{_:1}}}}},l:{a:{n:{c:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},b:{o:{a:{_:1}}},c:{o:{n:{i:{e:{s:{_:1}}},y:{_:1}}}},d:{_:1,i:{n:{g:{_:1}}},n:{e:{s:{s:{_:1}}}}},e:{_:1},k:{_:1},l:{_:1,a:{d:{s:{_:1}},s:{t:{_:1}}},e:{d:{_:1},r:{_:1,i:{n:{a:{_:1}}}},t:{_:1}},g:{a:{m:{e:{_:1}}}},i:{s:{t:{i:{c:{_:1,s:{_:1}}}}}},o:{n:{_:1},o:{n:{_:1,s:{_:1}}},t:{_:1,s:{_:1}}},p:{a:{r:{k:{_:1}}},l:{a:{y:{e:{r:{_:1,s:{_:1}}}}}},o:{i:{n:{t:{_:1}}}}},r:{o:{o:{m:{_:1}}}},s:{_:1,y:{_:1}}},m:{_:1,o:{r:{a:{l:{_:1}}}}},o:{n:{e:{y:{_:1}}}},t:{o:{y:{_:1}}}},m:{_:1,b:{i:{n:{o:{_:1}}},o:{o:{_:1,z:{l:{e:{d:{_:1}}}}}}}},n:{_:1,a:{l:{_:1,i:{t:{y:{_:1}}}},n:{a:{_:1,s:{_:1}}}},d:{_:1,a:{g:{e:{_:1,s:{_:1}}}},i:{t:{_:1,s:{_:1}}},s:{_:1},w:{a:{g:{o:{n:{_:1}}}}}},e:{_:1,t:{t:{e:{_:1}}}},g:{_:1,e:{d:{_:1},r:{s:{_:1}}},i:{n:{g:{_:1}}},l:{e:{s:{_:1}}},s:{_:1}},i:{s:{h:{_:1,e:{d:{_:1}}},t:{e:{r:{_:1}}}}},j:{o:{_:1}},k:{_:1,b:{o:{o:{k:{s:{_:1}}}}},e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},r:{o:{l:{l:{_:1,e:{d:{_:1}}}}},u:{p:{t:{_:1,c:{y:{_:1}},e:{d:{_:1}}}}}},s:{_:1}},n:{e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}},s:{t:{e:{r:{_:1}}}}}},q:{u:{e:{t:{_:1}}}},s:{h:{e:{e:{_:1}}}},t:{e:{r:{_:1}}},z:{a:{i:{_:1}}}},p:{t:{i:{s:{m:{_:1},t:{_:1,s:{_:1}}},z:{e:{_:1,d:{_:1}}}}}},r:{_:1,b:{_:1,a:{r:{i:{a:{n:{_:1,s:{_:1}}},c:{_:1}},a:{c:{l:{e:{_:1}}}}}},e:{c:{u:{e:{_:1,d:{_:1},s:{_:1}}}},d:{_:1},r:{_:1,s:{_:1,h:{o:{p:{_:1}}}}}},s:{_:1},o:{a:{c:{h:{_:1}}}}},d:{_:1},e:{_:1,d:{_:1},f:{o:{o:{t:{_:1}}}},l:{y:{_:1}}},f:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}},g:{a:{i:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}},e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},i:{n:{g:{_:1}},u:{m:{_:1}}},k:{_:1,e:{d:{_:1},e:{p:{_:1}},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},l:{e:{y:{_:1}},o:{w:{_:1}}},m:{a:{i:{d:{_:1}},n:{_:1}}},n:{_:1,a:{c:{l:{e:{_:1}}}},y:{a:{r:{d:{_:1}}}}},o:{m:{e:{t:{e:{r:{_:1}}}}},n:{_:1,e:{s:{s:{_:1}},t:{_:1}}},q:{u:{e:{_:1}}}},r:{a:{c:{k:{s:{_:1}},u:{d:{a:{_:1}}}},g:{e:{_:1}},s:{k:{e:{w:{d:{a:{_:1}}}}}}},e:{_:1,d:{_:1},l:{_:1,i:{n:{g:{_:1}}},s:{_:1}},n:{_:1}},i:{c:{a:{d:{e:{_:1,d:{_:1},s:{_:1}}}}},e:{r:{_:1}},n:{g:{_:1}},o:{_:1},s:{t:{e:{r:{_:1}}}}},o:{o:{m:{_:1}},w:{_:1}}},s:{_:1,t:{o:{o:{l:{_:1}}}}},t:{e:{n:{d:{e:{r:{_:1}},i:{n:{g:{_:1}}}}},r:{_:1}}}},s:{e:{_:1,b:{a:{l:{l:{_:1}}}},d:{_:1},l:{e:{s:{s:{_:1}}}},m:{a:{n:{_:1}},e:{n:{t:{_:1,s:{_:1}}}}},s:{_:1}},h:{_:1,e:{d:{_:1}},f:{u:{l:{_:1}}},i:{n:{g:{_:1}}}},i:{c:{_:1,a:{l:{l:{y:{_:1}}}},s:{_:1}},l:{_:1},n:{_:1},s:{_:1}},k:{_:1,e:{t:{_:1,b:{a:{l:{l:{_:1,s:{_:1}}}}},s:{_:1}}},i:{n:{g:{_:1}}}},s:{_:1,e:{t:{t:{_:1}}},i:{n:{e:{t:{_:1}}}},o:{o:{n:{_:1}}}},t:{a:{r:{d:{_:1,s:{_:1}}}},e:{_:1},i:{l:{l:{e:{_:1}}},o:{d:{o:{n:{_:1}}}}}},c:{u:{l:{i:{n:{_:1}}}}}},t:{_:1,c:{h:{_:1}},e:{s:{_:1}},h:{_:1,e:{_:1,d:{_:1}},i:{n:{g:{_:1}}},r:{o:{b:{e:{_:1,s:{_:1}}},o:{m:{_:1,s:{_:1}}}}},s:{_:1},t:{u:{b:{_:1}}}},m:{a:{n:{_:1}}},o:{n:{_:1}},s:{_:1},t:{e:{d:{_:1},r:{_:1,e:{d:{_:1}},i:{e:{s:{_:1}},n:{g:{_:1}}},y:{_:1}}},i:{n:{g:{_:1}}},l:{e:{_:1,f:{i:{e:{l:{d:{_:1}}}}},g:{r:{o:{u:{n:{d:{_:1}}}}}},s:{_:1,h:{i:{p:{_:1}}}}},i:{n:{g:{_:1}}}},y:{_:1}}},u:{b:{l:{e:{_:1,s:{_:1}}}}},w:{d:{y:{_:1}},l:{_:1,i:{n:{g:{_:1}}}}},y:{_:1,b:{e:{r:{r:{y:{_:1}}}}},o:{n:{e:{t:{_:1}}},u:{_:1}},s:{_:1},l:{e:{e:{f:{_:1}}}}},z:{a:{a:{r:{_:1}}},o:{o:{k:{a:{_:1}}}}}},e:{_:1,a:{c:{h:{_:1,e:{s:{_:1}}},o:{n:{_:1}}},d:{e:{d:{_:1}},s:{_:1}},g:{l:{e:{_:1}}},k:{_:1,e:{r:{s:{_:1}}}},m:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},n:{_:1,b:{a:{g:{_:1}}},i:{e:{_:1}},s:{_:1}},r:{_:1,a:{b:{l:{e:{_:1}}}},d:{_:1,e:{d:{_:1}},s:{_:1}},e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1,s:{_:1}}}},s:{_:1},t:{i:{c:{_:1}}}},s:{t:{_:1,i:{e:{_:1}},s:{_:1}}},t:{_:1,e:{n:{_:1},r:{_:1}},i:{n:{g:{_:1,s:{_:1}}}},n:{i:{k:{_:1}}},s:{_:1}},u:{_:1,c:{o:{u:{p:{_:1}}}},t:{i:{e:{s:{_:1}},f:{u:{l:{_:1,l:{y:{_:1}}}},l:{y:{_:1}}}},y:{_:1}}},v:{e:{r:{_:1,s:{_:1}}}}},c:{a:{m:{e:{_:1}},u:{s:{e:{_:1}}}},k:{_:1,o:{n:{s:{_:1}}},s:{_:1}},o:{m:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}}},d:{_:1,b:{u:{g:{_:1,s:{_:1}}}},l:{a:{m:{_:1}}},p:{a:{n:{_:1,s:{_:1}}}},r:{i:{d:{d:{e:{n:{_:1}}}}},o:{c:{k:{_:1}},o:{m:{_:1,s:{_:1}}}}},s:{_:1,i:{d:{e:{_:1}}},p:{r:{e:{a:{d:{_:1}}}}}},t:{i:{m:{e:{_:1}}}}},e:{_:1,c:{h:{_:1}},f:{_:1,c:{a:{k:{e:{_:1}}}},e:{d:{_:1}},s:{_:1},y:{_:1}},n:{_:1},p:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},s:{_:1}},r:{_:1,s:{_:1},y:{_:1}},s:{_:1,w:{a:{x:{_:1}}}},t:{l:{e:{_:1,s:{_:1}}},s:{_:1}},d:{r:{i:{l:{l:{_:1}}}}}},f:{a:{l:{l:{_:1}}},i:{t:{t:{i:{n:{g:{_:1}}}}}},o:{r:{e:{_:1,h:{a:{n:{d:{_:1}}}}}}}},g:{_:1,a:{n:{_:1},t:{_:1}},e:{t:{s:{_:1}}},g:{a:{r:{_:1,s:{_:1}}},e:{d:{_:1}},i:{n:{g:{_:1}}}},i:{n:{_:1,n:{e:{r:{_:1}},i:{n:{g:{_:1,s:{_:1}}}}},s:{_:1}}},r:{u:{d:{g:{e:{_:1}}}}},s:{_:1},u:{n:{_:1}}},h:{a:{l:{f:{_:1}},v:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{r:{_:1,a:{l:{_:1}}},u:{r:{_:1}}}}}},e:{a:{d:{i:{n:{g:{_:1}}}}},e:{y:{e:{m:{_:1}}}}},i:{n:{d:{_:1}}},o:{l:{d:{_:1}},o:{v:{e:{s:{_:1}}}}}},i:{g:{e:{_:1}},n:{g:{_:1,s:{_:1}}}},l:{_:1,a:{b:{o:{r:{_:1}}},t:{e:{d:{_:1}}}},e:{a:{g:{u:{e:{r:{e:{d:{_:1}}}}}}}},i:{e:{_:1,f:{_:1,s:{_:1}},v:{a:{b:{l:{e:{_:1}}}},e:{_:1,d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}}},t:{t:{l:{e:{_:1}}}},v:{e:{_:1}}},l:{_:1,b:{o:{y:{_:1}}},e:{_:1},h:{o:{p:{s:{_:1}}}},i:{e:{s:{_:1}},g:{e:{r:{e:{n:{t:{_:1}}}}}}},m:{a:{n:{_:1}}},s:{_:1,p:{r:{o:{u:{t:{_:1}}}}}},y:{_:1,a:{c:{h:{i:{n:{g:{_:1}}}}}},b:{u:{t:{t:{o:{n:{_:1}}}}}}},o:{s:{s:{o:{m:{_:1}}}}}},o:{n:{g:{_:1,e:{d:{_:1}},i:{n:{g:{_:1,s:{_:1}}}},s:{_:1}}},v:{e:{d:{_:1}}},w:{_:1}},t:{_:1,e:{d:{_:1}},s:{_:1}},v:{e:{d:{e:{r:{e:{_:1}}}}}},d:{u:{m:{_:1}}}},n:{_:1,c:{h:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},d:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}},e:{_:1,a:{t:{h:{_:1}}},d:{i:{c:{t:{_:1}}}},f:{a:{c:{t:{o:{r:{_:1,s:{_:1}}}}}},i:{c:{i:{a:{l:{_:1}}}},t:{_:1,e:{d:{_:1}},s:{_:1}}}},s:{_:1},v:{o:{l:{e:{n:{c:{e:{_:1}},t:{_:1}}}}}}},i:{g:{n:{_:1}}},j:{a:{m:{i:{n:{_:1,s:{_:1}}}}}},n:{e:{t:{_:1}},y:{_:1}},t:{_:1,h:{i:{c:{_:1}}}}},q:{u:{e:{s:{t:{_:1}}}}},r:{a:{t:{e:{_:1},i:{n:{g:{_:1}}}}},e:{a:{v:{e:{m:{e:{n:{t:{_:1}}}}}}},f:{t:{_:1}},t:{_:1}},g:{_:1,m:{i:{t:{e:{_:1}}}}},l:{i:{n:{_:1}}},r:{i:{e:{s:{_:1}}},y:{_:1}},s:{e:{r:{k:{_:1,e:{r:{_:1}}}}}},t:{h:{a:{_:1}}},y:{l:{l:{i:{u:{m:{_:1}}}}}}},s:{e:{e:{c:{h:{_:1}}}},i:{d:{e:{_:1,s:{_:1}}},e:{g:{e:{d:{_:1}}}}},m:{i:{r:{c:{h:{_:1}}}}},t:{_:1,e:{d:{_:1}},o:{w:{_:1,e:{d:{_:1}}}},s:{e:{l:{l:{e:{r:{_:1}}}}}}}},t:{_:1,a:{_:1},h:{_:1,e:{s:{d:{a:{_:1}}}}},r:{a:{y:{_:1,a:{l:{_:1,s:{_:1}}},e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},s:{_:1},t:{e:{r:{_:1}},i:{n:{g:{_:1}}}},w:{e:{e:{n:{_:1}}}}},v:{e:{r:{a:{g:{e:{_:1}}}}}},w:{a:{r:{e:{_:1}}},i:{t:{c:{h:{e:{d:{_:1}}}}}},e:{a:{r:{_:1}}}},y:{_:1,o:{n:{d:{_:1}}}}},i:{_:1,a:{l:{y:{_:1}},s:{_:1,e:{d:{_:1}}}},b:{_:1,l:{e:{_:1,s:{_:1}},i:{c:{a:{l:{_:1}}},o:{g:{r:{a:{p:{h:{y:{_:1}}}}}}}}},a:{r:{e:{l:{_:1}}}}},c:{e:{n:{t:{e:{n:{n:{i:{a:{l:{_:1}}}}}}}}},k:{e:{r:{_:1,i:{n:{g:{_:1}}}}}},u:{s:{p:{i:{d:{s:{_:1}}}}}},y:{c:{l:{e:{_:1,s:{_:1}}}}}},d:{_:1,d:{e:{r:{_:1}},i:{n:{g:{_:1}}}},e:{_:1},i:{n:{g:{_:1}}},s:{_:1},o:{o:{f:{_:1}}}},f:{f:{_:1}},g:{_:1,a:{m:{i:{s:{t:{_:1}}},y:{_:1}}},f:{o:{o:{t:{_:1}}}},g:{e:{r:{_:1},s:{t:{_:1}}},i:{e:{_:1}}},h:{o:{r:{n:{_:1}}}},m:{o:{u:{t:{h:{_:1}}}}},n:{e:{s:{s:{_:1}}}},o:{t:{_:1,r:{y:{_:1}}}}},j:{o:{u:{_:1}}},k:{e:{_:1,r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1},i:{_:1,s:{_:1}}}}},l:{a:{t:{e:{r:{a:{l:{_:1}}}}}},g:{e:{_:1}},i:{n:{g:{u:{a:{l:{_:1}}}}}},l:{_:1,b:{o:{a:{r:{d:{_:1,s:{_:1}}}}}},i:{a:{r:{d:{_:1}}},e:{_:1},n:{g:{_:1}},o:{n:{_:1,a:{i:{r:{e:{_:1,s:{_:1}}}}},s:{_:1}}}},s:{_:1},y:{_:1}}},m:{b:{o:{_:1,s:{_:1}}}},n:{_:1,a:{r:{y:{_:1}},c:{l:{e:{_:1}}}},d:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},g:{e:{_:1},o:{_:1}},o:{c:{u:{l:{a:{r:{s:{_:1}}}}}}},s:{_:1}},o:{_:1,c:{h:{e:{m:{i:{s:{t:{_:1,r:{y:{_:1}}}}}}}}},g:{r:{a:{p:{h:{i:{c:{a:{l:{_:1}}},e:{s:{_:1}}},y:{_:1}}}}}},h:{a:{z:{a:{r:{d:{_:1}}}}}},l:{o:{g:{i:{c:{a:{l:{_:1,l:{y:{_:1}}}}}},y:{_:1}}}},n:{i:{c:{_:1}}},p:{s:{y:{_:1}}},s:{_:1},t:{e:{c:{h:{_:1}}}}},p:{a:{r:{t:{i:{s:{a:{n:{_:1}}}}}}},o:{l:{a:{r:{_:1}}}}},r:{c:{h:{_:1}},d:{_:1,c:{a:{g:{e:{_:1}}}},i:{e:{_:1,s:{_:1}}},s:{_:1,e:{e:{d:{_:1}}}}},t:{h:{_:1,d:{a:{y:{_:1,s:{_:1}}}},i:{n:{g:{_:1}}},m:{a:{r:{k:{_:1}}}},p:{l:{a:{c:{e:{_:1}}}}},r:{i:{g:{h:{t:{_:1}}}}},s:{_:1}}}},s:{c:{u:{i:{t:{_:1,s:{_:1}}}}},h:{o:{p:{_:1,s:{_:1}}},a:{r:{p:{_:1}}}},o:{n:{_:1}},q:{u:{e:{_:1}}},t:{r:{o:{_:1}}}},t:{_:1,c:{h:{_:1,e:{s:{_:1}}}},e:{_:1,s:{_:1}},i:{n:{g:{_:1}}},s:{_:1,y:{_:1}},t:{e:{n:{_:1},r:{_:1,n:{e:{s:{s:{_:1}}}}}},y:{_:1}}},z:{_:1,a:{r:{r:{e:{_:1}}}}}},l:{a:{b:{_:1,b:{e:{r:{m:{o:{u:{t:{h:{_:1}}}}}}},i:{n:{g:{_:1}}}}},c:{k:{_:1,b:{e:{r:{r:{y:{_:1}}}},i:{r:{d:{_:1}}},o:{a:{r:{d:{_:1}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},j:{a:{c:{k:{_:1}}}},m:{a:{i:{l:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}}}}}},n:{e:{s:{s:{_:1}}}},o:{u:{t:{_:1,s:{_:1}}}},s:{_:1,m:{i:{t:{h:{_:1}}}}}},e:{p:{h:{a:{l:{o:{n:{_:1}}}}}}}},d:{d:{e:{r:{_:1,s:{_:1}}}},e:{_:1,s:{_:1}}},h:{_:1},m:{_:1,e:{_:1,d:{_:1},l:{e:{s:{s:{_:1}}}},s:{_:1}},i:{n:{g:{_:1}}}},n:{d:{_:1},k:{_:1,e:{t:{_:1,s:{_:1}}},l:{y:{_:1}},s:{_:1}}},r:{i:{n:{g:{_:1}}},n:{e:{y:{_:1}}}},s:{p:{h:{e:{m:{o:{u:{s:{_:1}}},y:{_:1}}}}},t:{_:1,e:{d:{_:1},r:{s:{_:1}}},i:{n:{g:{_:1}}},o:{i:{s:{e:{_:1}}}}}},t:{a:{n:{t:{_:1,l:{y:{_:1}}}}},h:{e:{r:{_:1,i:{n:{g:{_:1}}}}}}},z:{e:{_:1,r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}},k:{e:{n:{_:1}}}}}},e:{a:{c:{h:{_:1,e:{d:{_:1},r:{s:{_:1}}},i:{n:{g:{_:1}}}}},k:{_:1}},d:{_:1},e:{d:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},p:{_:1}},m:{i:{s:{h:{_:1}}}},n:{d:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},s:{s:{_:1,e:{d:{_:1}},i:{n:{g:{_:1,s:{_:1}}}}}},w:{_:1}},i:{g:{h:{t:{_:1}}},m:{e:{y:{_:1}},p:{_:1}},n:{d:{_:1,e:{d:{_:1},r:{s:{_:1}}},f:{o:{l:{d:{_:1,e:{d:{_:1}}}}}},i:{n:{g:{_:1}}},l:{y:{_:1}},n:{e:{s:{s:{_:1}}}},s:{_:1,i:{d:{e:{d:{_:1}}}}}},k:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},p:{_:1,s:{_:1},b:{u:{g:{_:1}}}},s:{s:{_:1,f:{u:{l:{_:1,l:{y:{_:1}}}}},e:{y:{_:1}}},t:{e:{r:{s:{_:1}}}}},t:{h:{e:{l:{y:{_:1}},r:{i:{n:{g:{_:1}}}}}},z:{_:1,l:{e:{_:1}}}},z:{z:{a:{r:{d:{_:1}}}}}},o:{a:{t:{e:{d:{_:1}}}},b:{_:1},c:{_:1,k:{_:1,a:{d:{e:{_:1}},g:{e:{_:1}}},b:{u:{s:{t:{e:{r:{s:{_:1}}}}}}},e:{d:{_:1}},h:{e:{a:{d:{_:1}}}},i:{n:{g:{_:1}}},s:{_:1}}},k:{e:{_:1,s:{_:1}}},n:{d:{_:1,e:{_:1,s:{_:1}},s:{_:1}}},o:{d:{_:1,e:{d:{_:1}},h:{o:{u:{n:{d:{_:1}}}}},i:{e:{d:{_:1}}},l:{e:{s:{s:{_:1}}},i:{n:{e:{_:1}}}},s:{_:1,h:{e:{d:{_:1}},o:{t:{_:1}}},t:{r:{e:{a:{m:{_:1}}}}},u:{c:{k:{e:{r:{_:1}},i:{n:{g:{_:1}}}}}}},y:{_:1}},m:{_:1,i:{n:{g:{_:1}}},s:{_:1}}},s:{s:{o:{m:{_:1,e:{d:{_:1}},s:{_:1}}}}},t:{_:1,c:{h:{y:{_:1}}},t:{e:{r:{_:1}},o:{_:1}}},u:{s:{e:{_:1}}},w:{_:1,e:{d:{_:1},r:{_:1}},f:{i:{s:{h:{_:1}}}},h:{a:{r:{d:{_:1}}}},i:{n:{g:{_:1}}},n:{_:1},o:{u:{t:{_:1}}},s:{_:1},t:{o:{r:{c:{h:{_:1}}}}},u:{p:{_:1}}}},u:{b:{b:{e:{r:{_:1,i:{n:{g:{_:1}}}}}}},d:{g:{e:{o:{n:{e:{d:{_:1}}}}}}},e:{_:1,b:{e:{l:{l:{s:{_:1}}},r:{r:{i:{e:{s:{_:1}}},y:{_:1}}}}},p:{o:{i:{n:{t:{_:1}}}},r:{i:{n:{t:{s:{_:1}}}}}},r:{_:1},s:{_:1,t:{_:1}}},f:{f:{_:1,i:{n:{g:{_:1}}},s:{_:1}}},m:{e:{_:1}},n:{d:{e:{r:{_:1,i:{n:{g:{_:1}}},s:{_:1}}}},t:{_:1}},r:{_:1,b:{_:1},r:{e:{d:{_:1}},y:{_:1}},t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}},s:{h:{_:1,i:{n:{g:{_:1}}}},t:{e:{r:{_:1}}}}}},o:{_:1,a:{_:1,r:{_:1,d:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1,h:{o:{u:{s:{e:{_:1}}}}}}}},r:{o:{o:{m:{_:1}}}},s:{_:1},w:{a:{l:{k:{_:1}}}}}},s:{t:{_:1}},t:{_:1,h:{o:{u:{s:{e:{_:1}}}}},i:{n:{g:{_:1}}},l:{o:{a:{d:{_:1}}}},m:{a:{n:{_:1}}},s:{_:1}}},b:{_:1,b:{i:{n:{_:1,g:{_:1}}},y:{_:1}},c:{a:{t:{_:1}}}},d:{_:1,e:{g:{a:{_:1}}},i:{e:{s:{_:1}},l:{y:{_:1}}},y:{_:1,g:{u:{a:{r:{d:{_:1,s:{_:1}}}}}}}},g:{e:{y:{m:{a:{n:{_:1}}}}},g:{l:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}},s:{_:1},u:{s:{_:1}}},h:{e:{m:{i:{a:{n:{_:1}}}}}},i:{l:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}}},l:{d:{_:1,e:{r:{_:1}},l:{y:{_:1}},o:{r:{e:{_:1}}}},o:{g:{n:{a:{_:1}}}},s:{t:{e:{r:{_:1}}}},t:{_:1,e:{d:{_:1}},s:{_:1},u:{n:{d:{_:1}}}}},m:{b:{_:1,a:{r:{d:{e:{d:{_:1}},i:{n:{g:{_:1}}}}}},e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1,s:{_:1}}}},s:{_:1,h:{e:{l:{l:{_:1}}}}}}},n:{b:{o:{n:{_:1}}},d:{_:1,a:{g:{e:{_:1}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1,m:{a:{n:{_:1}}}}},e:{_:1,d:{_:1},h:{e:{a:{d:{_:1}}}},l:{e:{s:{s:{_:1}}}},r:{_:1,s:{_:1}},s:{_:1}},f:{i:{r:{e:{_:1}}}},g:{_:1,o:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},k:{e:{r:{s:{_:1}}}},n:{e:{t:{_:1}},i:{e:{_:1}}},u:{s:{_:1,e:{s:{_:1}}}},y:{_:1},s:{l:{y:{_:1}}}},o:{_:1,g:{e:{r:{_:1},y:{_:1,m:{a:{n:{_:1}}}}},i:{e:{_:1}}},k:{_:1,c:{a:{s:{e:{_:1}}}},e:{d:{_:1},n:{d:{s:{_:1}}},r:{_:1}},i:{e:{_:1},n:{g:{_:1}},s:{h:{_:1}}},k:{e:{e:{p:{e:{r:{_:1}}}}}},l:{e:{t:{_:1,s:{_:1}}}},m:{a:{n:{_:1},r:{k:{_:1}}}},s:{_:1,h:{e:{l:{f:{_:1},v:{e:{s:{_:1}}}}}},t:{o:{r:{e:{_:1}}}}}},m:{_:1,b:{o:{x:{_:1}}},e:{r:{_:1,a:{n:{g:{_:1}}}}}},n:{_:1,i:{e:{s:{_:1}}}},r:{i:{s:{h:{_:1}}}},s:{t:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},s:{_:1}}},t:{_:1,e:{d:{_:1}},h:{_:1,s:{_:1}},i:{e:{s:{_:1}}},l:{e:{g:{_:1}}},s:{_:1},y:{_:1}},z:{e:{_:1,r:{_:1}},i:{n:{g:{_:1}}}}},p:{_:1},r:{a:{_:1},d:{e:{a:{u:{x:{_:1}}},l:{l:{o:{_:1}}},r:{_:1,i:{n:{g:{_:1}}},l:{i:{n:{e:{_:1}}}},s:{_:1}}}},e:{_:1,d:{_:1,o:{m:{_:1}}}},i:{n:{g:{_:1}}},n:{_:1},r:{o:{w:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},s:{o:{m:{_:1,y:{_:1}}},s:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},y:{_:1}},t:{o:{n:{_:1}}}},t:{_:1,a:{n:{i:{c:{a:{l:{_:1}}}},y:{_:1}}},c:{h:{e:{d:{_:1}}}},h:{_:1,e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},t:{l:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},o:{m:{_:1,e:{d:{_:1}},l:{e:{s:{s:{_:1}}}},s:{_:1}}}},u:{l:{i:{s:{m:{_:1}}}}}},u:{g:{h:{t:{_:1}}},l:{d:{e:{r:{_:1}}},e:{v:{a:{r:{d:{_:1}}}}}},n:{c:{e:{_:1,d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},y:{_:1}},d:{_:1,a:{r:{i:{e:{s:{_:1}}},y:{_:1}}},s:{_:1}},t:{y:{_:1}},s:{w:{e:{e:{t:{_:1}}}}}},q:{u:{e:{t:{_:1,s:{_:1}}}}},r:{b:{o:{n:{_:1}}},g:{e:{o:{i:{s:{_:1}}}}},n:{e:{_:1}}},t:{_:1,i:{q:{u:{e:{_:1,s:{_:1}}}}},o:{n:{n:{i:{e:{r:{e:{_:1}}}}}}},s:{_:1}},f:{f:{a:{l:{a:{n:{t:{_:1}}}}}}}},w:{_:1,e:{d:{_:1},l:{_:1,s:{_:1}},r:{s:{_:1},y:{_:1}}},i:{n:{g:{_:1}}},l:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{e:{_:1},g:{_:1}}},s:{_:1}},m:{a:{n:{_:1}}},s:{_:1}},x:{_:1,c:{a:{r:{_:1}}},e:{d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}},y:{_:1,c:{o:{t:{t:{_:1}}}},f:{r:{i:{e:{n:{d:{_:1,s:{_:1}}}}}}},h:{o:{o:{d:{_:1}}}},s:{_:1,e:{n:{b:{e:{r:{r:{y:{_:1}}}}}}}}},z:{o:{_:1,s:{_:1}}}},r:{a:{_:1,c:{e:{_:1,l:{e:{t:{_:1,s:{_:1}}}},s:{_:1}},i:{n:{g:{_:1}}},k:{e:{n:{_:1},t:{_:1}}}},d:{_:1},g:{_:1,g:{a:{r:{t:{_:1}}},e:{d:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}},i:{d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}},l:{l:{e:{_:1}}},n:{_:1,e:{d:{_:1}},i:{e:{s:{t:{_:1}}}},s:{_:1,t:{o:{r:{m:{_:1,i:{n:{g:{_:1}}}}}}}},w:{a:{s:{h:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}}}},x:{e:{n:{_:1}}}},k:{e:{_:1,s:{_:1}}},n:{_:1,c:{h:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},d:{_:1,i:{e:{s:{_:1}}},y:{_:1}}},s:{_:1,h:{_:1},s:{_:1,i:{e:{r:{e:{_:1,s:{_:1}}}}}}},t:{_:1,s:{_:1},w:{u:{r:{s:{t:{_:1}}}}}},v:{a:{_:1,d:{o:{_:1}}},e:{_:1,d:{_:1},l:{y:{_:1}},r:{_:1,y:{_:1}},s:{t:{_:1}}},o:{_:1},i:{a:{r:{y:{_:1}}}}},w:{l:{_:1}},y:{s:{_:1}},z:{e:{n:{_:1}},i:{l:{_:1}}}},e:{a:{c:{h:{_:1,e:{d:{_:1}}}},d:{_:1,t:{h:{_:1}}},k:{_:1,a:{b:{l:{e:{_:1}}}},d:{o:{w:{n:{_:1,s:{_:1}}}}},e:{r:{_:1}},f:{a:{s:{t:{_:1}}}},i:{n:{g:{_:1}}},o:{u:{t:{_:1}}},s:{_:1},t:{h:{r:{o:{u:{g:{h:{_:1,s:{_:1}}}}}}}},u:{p:{_:1,s:{_:1}}},w:{a:{t:{e:{r:{_:1}}}}}},s:{t:{_:1,e:{d:{_:1}},s:{_:1}}},t:{h:{_:1,a:{b:{l:{e:{_:1}}}},e:{_:1,d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}},l:{e:{s:{s:{_:1}}}},s:{_:1},t:{a:{k:{i:{n:{g:{_:1}}}}}}}}},d:{_:1},e:{_:1,c:{h:{_:1}},d:{_:1,i:{n:{g:{_:1}}},s:{_:1}},z:{e:{_:1},i:{n:{g:{_:1}}},y:{_:1}}},n:{_:1,t:{_:1}},t:{h:{r:{e:{n:{_:1}}}}},w:{_:1,e:{d:{_:1},r:{_:1,y:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},l:{o:{o:{m:{_:1}}}}},i:{a:{r:{_:1}},b:{e:{_:1,d:{_:1},r:{y:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}},c:{k:{_:1,e:{d:{_:1}},s:{_:1}}},d:{a:{l:{_:1}},e:{_:1,g:{r:{o:{o:{m:{_:1}}}}},s:{_:1,m:{a:{i:{d:{_:1,s:{_:1}}}}}}},g:{e:{_:1,s:{_:1}}}},e:{_:1,f:{_:1,c:{a:{s:{e:{_:1,s:{_:1}}}}},e:{d:{_:1}},i:{n:{g:{_:1,s:{_:1}}}},l:{y:{_:1}},s:{_:1}}},g:{_:1,a:{d:{e:{_:1},i:{e:{r:{_:1}}}}},h:{t:{_:1,e:{n:{_:1},r:{_:1},s:{t:{_:1}}},l:{y:{_:1}}}}},l:{l:{_:1,i:{a:{n:{c:{e:{_:1}},t:{_:1,l:{y:{_:1}}}}}}}},m:{_:1},n:{_:1,g:{_:1,i:{n:{g:{_:1}}},s:{_:1}},k:{_:1}},o:{c:{h:{e:{_:1}}},n:{n:{e:{_:1}}}},s:{_:1,k:{e:{t:{_:1}},l:{y:{_:1}}},t:{o:{l:{_:1}}}},t:{_:1,c:{h:{e:{s:{_:1}}}},t:{_:1,l:{e:{_:1}}}}},o:{_:1,a:{d:{_:1,c:{a:{s:{t:{_:1,i:{n:{g:{_:1}}},s:{_:1}}}}},e:{n:{i:{n:{g:{_:1}}}},r:{_:1}},s:{_:1}}},c:{c:{o:{l:{i:{_:1}}}},h:{u:{r:{e:{_:1,s:{_:1}}}}},k:{_:1}},i:{l:{e:{d:{_:1},r:{_:1}}}},k:{e:{_:1,n:{_:1,h:{e:{a:{r:{t:{e:{d:{_:1}}}}}}}},r:{_:1,a:{g:{e:{_:1}}}}}},n:{c:{h:{i:{a:{l:{_:1}}}},o:{_:1}},z:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}},o:{r:{_:1},n:{g:{_:1}}}}},o:{c:{h:{_:1}},d:{_:1,i:{n:{g:{_:1}}},y:{_:1}},k:{_:1,s:{_:1}},m:{_:1,s:{_:1,t:{i:{c:{k:{_:1,s:{_:1}}}}}}}},s:{_:1},t:{h:{_:1,e:{l:{_:1},r:{_:1,h:{o:{o:{d:{_:1}}}},l:{y:{_:1}},s:{_:1}}}}},u:{g:{h:{t:{_:1}}},h:{a:{h:{a:{_:1}}}}},w:{_:1,b:{e:{a:{t:{_:1,i:{n:{g:{_:1}}}}}}},n:{_:1,i:{e:{_:1,s:{_:1}},n:{g:{_:1}}},o:{u:{t:{_:1}}},s:{_:1,t:{o:{n:{e:{_:1}}}}}},s:{e:{_:1},i:{n:{g:{_:1}}}}}},r:{_:1},u:{i:{s:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},m:{b:{y:{_:1}}},n:{c:{h:{_:1}},e:{t:{t:{e:{_:1,s:{_:1}}}}},t:{_:1}},s:{h:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},t:{a:{l:{_:1,i:{t:{y:{_:1}}},l:{y:{_:1}}}},e:{_:1}},x:{i:{s:{h:{_:1}}}}}},u:{b:{b:{i:{e:{s:{_:1}}},l:{e:{_:1,s:{_:1}},y:{_:1}}}},c:{k:{_:1,a:{r:{o:{o:{_:1}}}},e:{t:{_:1,s:{_:1}},y:{e:{s:{_:1}}}},l:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}},o:{_:1},s:{_:1,h:{o:{t:{_:1}}}}}},d:{_:1,d:{i:{e:{s:{_:1}},n:{g:{_:1}}},y:{_:1}},g:{e:{_:1,t:{_:1,e:{d:{_:1}},s:{_:1}}},i:{n:{g:{_:1}}}},s:{_:1},e:{w:{_:1}}},f:{f:{_:1,a:{l:{o:{_:1}}},e:{r:{_:1},t:{_:1}},o:{o:{n:{_:1,s:{_:1}}}},s:{_:1},y:{_:1}}},g:{_:1,g:{e:{d:{_:1},r:{_:1,e:{d:{_:1}}}},i:{n:{g:{_:1}}},y:{_:1}},l:{e:{_:1}},s:{_:1}},i:{l:{d:{_:1,e:{r:{_:1}},i:{n:{g:{_:1,s:{_:1}}}},s:{_:1},u:{p:{_:1}}},t:{_:1}},z:{e:{l:{_:1}}}},l:{b:{_:1,o:{u:{s:{_:1}}},s:{_:1},a:{s:{a:{u:{r:{_:1}}}}}},g:{e:{_:1},i:{n:{g:{_:1}}}},i:{m:{i:{c:{_:1}}}},k:{_:1,y:{_:1}},l:{_:1,d:{o:{g:{_:1},z:{e:{_:1,r:{s:{_:1}}}}}},e:{t:{_:1,i:{n:{_:1,s:{_:1}}},p:{r:{o:{o:{f:{_:1}}}}},s:{_:1}}},h:{e:{a:{d:{e:{d:{_:1}}}}}},i:{e:{d:{_:1},s:{_:1}},o:{n:{_:1}}},p:{e:{n:{_:1}}},s:{_:1},y:{_:1}}},m:{_:1,b:{l:{e:{_:1},i:{n:{g:{_:1}}}}},m:{e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}},p:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},k:{i:{n:{s:{_:1}}}},s:{_:1},y:{_:1}},s:{_:1}},n:{_:1,c:{h:{_:1,e:{s:{_:1}}}},d:{l:{e:{_:1,s:{_:1}}}},g:{a:{l:{o:{w:{_:1,s:{_:1}}}}},e:{e:{_:1}},l:{e:{d:{_:1}}}},i:{o:{n:{_:1,s:{_:1}}}},k:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},n:{i:{e:{s:{_:1}}},y:{_:1},e:{l:{b:{y:{_:1}}}}},s:{_:1},t:{_:1,i:{n:{g:{_:1}}}},e:{a:{r:{y:{_:1}}}}},r:{a:{_:1},b:{s:{_:1}},d:{e:{n:{_:1,e:{d:{_:1}},s:{_:1}}}},e:{a:{u:{_:1,c:{r:{a:{t:{_:1,s:{_:1}}}}}}}},g:{e:{o:{n:{i:{n:{g:{_:1}}}}},r:{_:1,s:{_:1}},s:{s:{_:1}}},l:{a:{r:{_:1,i:{e:{s:{_:1}}},y:{_:1}}}},u:{n:{d:{y:{_:1}}}}},i:{a:{l:{_:1}},e:{d:{_:1},s:{_:1}}},k:{e:{_:1}},l:{a:{p:{_:1}},e:{y:{_:1}},y:{_:1}},n:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},o:{u:{t:{_:1}}},s:{_:1},t:{_:1}},p:{_:1,i:{n:{g:{_:1}}}},r:{i:{t:{o:{_:1,s:{_:1}}}},o:{_:1,w:{s:{_:1}}}},s:{t:{_:1,i:{n:{g:{_:1}}}}},t:{o:{n:{_:1}}},y:{_:1,i:{n:{g:{_:1}}}},m:{y:{_:1}}},s:{_:1,b:{o:{y:{_:1,s:{_:1}}}},e:{s:{_:1}},h:{_:1,e:{l:{_:1},s:{_:1}}},i:{e:{r:{_:1},s:{t:{_:1}}},n:{e:{s:{s:{_:1,e:{s:{_:1}},m:{a:{n:{_:1}},e:{n:{_:1}}},w:{o:{m:{a:{n:{_:1}},e:{n:{_:1}}}}}}}}}},l:{o:{a:{d:{_:1}}}},s:{i:{n:{g:{_:1}}}},t:{_:1,e:{d:{_:1},r:{_:1}},i:{e:{r:{_:1}},n:{g:{_:1}}},l:{e:{_:1},i:{n:{g:{_:1}}}},s:{_:1},y:{_:1}},y:{_:1,b:{o:{d:{y:{_:1}}}}}},t:{_:1,c:{h:{_:1,e:{r:{_:1,e:{d:{_:1}},s:{_:1}}}}},l:{e:{r:{_:1,s:{_:1}}}},s:{_:1},t:{_:1,e:{d:{_:1},r:{_:1,b:{a:{l:{l:{_:1}}}},c:{u:{p:{_:1}}},f:{l:{i:{e:{s:{_:1}}},y:{_:1}},r:{e:{e:{_:1}}}},i:{n:{g:{_:1}}},s:{_:1,c:{o:{t:{c:{h:{_:1}}}}}},y:{_:1}}},i:{n:{g:{_:1}}},o:{c:{k:{s:{_:1}}},n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},s:{_:1}}},y:{_:1,e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},o:{u:{t:{_:1}}},s:{_:1}},z:{z:{_:1,a:{r:{d:{_:1,s:{_:1}}}},e:{d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}},w:{o:{l:{e:{_:1}}}}}}},w:{a:{n:{a:{_:1}}}},y:{_:1,e:{_:1,s:{_:1}},g:{o:{n:{e:{s:{_:1}}}}},l:{a:{w:{s:{_:1}}},i:{n:{e:{_:1}}}},p:{a:{s:{s:{_:1}}},r:{o:{d:{u:{c:{t:{_:1}}}}}}},s:{t:{a:{n:{d:{e:{r:{_:1,s:{_:1}}}}}}}}}};