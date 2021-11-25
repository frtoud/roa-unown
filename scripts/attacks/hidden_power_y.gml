var atk = 25;// Y
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_Y"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_Y_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 15);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_orcane_dsmash"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(atk, 2, AG_WINDOW_LENGTH, unown_y_water_active_time);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 2, AG_WINDOW_VSPEED, -13);
set_window_value(atk, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 2, AG_WINDOW_SFX, asset_get("sfx_orca_soak"));
set_window_value(atk, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(atk, 3, AG_WINDOW_TYPE, 7);
set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(atk, 1);

// cheating: storing position data here 
set_hitbox_value(atk, 0, HG_HITBOX_Y, 32);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, get_window_value(atk, 2, AG_WINDOW_LENGTH));
set_hitbox_value(atk, 1, HG_HITBOX_Y, -40);
set_hitbox_value(atk, 1, HG_WIDTH, 64);
set_hitbox_value(atk, 1, HG_HEIGHT, 30);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, 149);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//handled manually
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_LIFETIME, 1);
set_hitbox_value(atk, 2, HG_HITBOX_Y, 4); //dynamic
set_hitbox_value(atk, 2, HG_HEIGHT, 24); //dynamic
set_hitbox_value(atk, 2, HG_WIDTH, 24);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_SHAPE, 1);
set_hitbox_value(atk, 2, HG_DAMAGE, 7);
set_hitbox_value(atk, 2, HG_ANGLE, 45);
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(atk, 2, HG_EXTRA_HITPAUSE, 7);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, 195);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, 2);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.Y, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("y" not in unown_dictionary) unown_dictionary.y = make_trie_Y();
//================================================================
//contains words starting with Y
#define make_trie_Y()
    return {};