var atk = 18; // R
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_R"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_R_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 5);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_VSPEED, -4);
set_window_value(atk, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_ell_nair"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 7);

//Looping
set_window_value(atk, 2, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 2, AG_WINDOW_VSPEED, 8);
set_window_value(atk, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 2, AG_WINDOW_SFX, asset_get("sfx_ell_drill_loop"));
set_window_value(atk, 2, AG_WINDOW_SFX_FRAME, 1);

//finisher
set_window_value(atk, 3, AG_WINDOW_LENGTH, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, 3, AG_WINDOW_GOTO, 5);

//landing
set_window_value(atk, 4, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 4, AG_WINDOW_SFX, asset_get("sfx_ell_arc_small_missile_ground"));
set_window_value(atk, 4, AG_WINDOW_SFX_FRAME, 0);

//endlag
set_window_value(atk, 5, AG_WINDOW_LENGTH, 15);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(atk, 6);

//Top looping hit
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 3);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -20);
set_hitbox_value(atk, 1, HG_WIDTH, 64);
set_hitbox_value(atk, 1, HG_HEIGHT, 24);
set_hitbox_value(atk, 1, HG_PRIORITY, 6);
set_hitbox_value(atk, 1, HG_SHAPE, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 1);
set_hitbox_value(atk, 1, HG_ANGLE, 280);
set_hitbox_value(atk, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 1, HG_TECHABLE, 3);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, 1, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(atk, 1, HG_HITBOX_GROUP, 0);

//bottom looping hit
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 3);
set_hitbox_value(atk, 2, HG_HITBOX_Y, 0);
set_hitbox_value(atk, 2, HG_WIDTH, 32);
set_hitbox_value(atk, 2, HG_HEIGHT, 48);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_SHAPE, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 1);
set_hitbox_value(atk, 2, HG_ANGLE, 0);
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(atk, 2, HG_TECHABLE, 3);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, 1);

//copies of above
set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 3, HG_WINDOW, 2);
set_hitbox_value(atk, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, 3, HG_LIFETIME, get_hitbox_value(atk, 1, HG_LIFETIME));
set_hitbox_value(atk, 3, HG_HITBOX_Y, get_hitbox_value(atk, 1, HG_HITBOX_Y));
set_hitbox_value(atk, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(atk, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 4, HG_WINDOW, 2);
set_hitbox_value(atk, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, 4, HG_LIFETIME, get_hitbox_value(atk, 2, HG_LIFETIME));
set_hitbox_value(atk, 4, HG_HITBOX_Y, get_hitbox_value(atk, 2, HG_HITBOX_Y));
set_hitbox_value(atk, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(atk, 4, HG_HITBOX_GROUP, 2);

//Final hit (Air)
set_hitbox_value(atk, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 5, HG_WINDOW, 3);
set_hitbox_value(atk, 5, HG_LIFETIME, 2);
set_hitbox_value(atk, 5, HG_HITBOX_Y, 0);
set_hitbox_value(atk, 5, HG_WIDTH, 32);
set_hitbox_value(atk, 5, HG_HEIGHT, 48);
set_hitbox_value(atk, 5, HG_PRIORITY, 3);
set_hitbox_value(atk, 5, HG_SHAPE, 2);
set_hitbox_value(atk, 5, HG_DAMAGE, 3);
set_hitbox_value(atk, 5, HG_ANGLE, 270);
set_hitbox_value(atk, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 5, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(atk, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 5, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, 5, HG_HITBOX_GROUP, 3);

//Final hit (Landed)
set_hitbox_value(atk, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 6, HG_WINDOW, 4);
set_hitbox_value(atk, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(atk, 6, HG_LIFETIME, 6);
set_hitbox_value(atk, 6, HG_HITBOX_Y, -20);
set_hitbox_value(atk, 6, HG_WIDTH, 64);
set_hitbox_value(atk, 6, HG_HEIGHT, 64);
set_hitbox_value(atk, 6, HG_PRIORITY, 3);
set_hitbox_value(atk, 6, HG_SHAPE, 2);
set_hitbox_value(atk, 6, HG_DAMAGE, 3);
set_hitbox_value(atk, 6, HG_ANGLE, 75);
set_hitbox_value(atk, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 6, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(atk, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 6, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, 6, HG_HITBOX_GROUP, 3);



//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.R, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("r" not in unown_dictionary) unown_dictionary.r = make_trie_R();
//================================================================
//contains words starting with R
#define make_trie_R()
    return {};