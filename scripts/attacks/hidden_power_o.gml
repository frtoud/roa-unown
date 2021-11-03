set_attack_value(15, AG_CATEGORY, 2);
set_attack_value(15, AG_SPRITE, sprite_get("attack_O"));
set_attack_value(15, AG_HURTBOX_SPRITE, sprite_get("attack_O_hurt"));
set_attack_value(15, AG_NUM_WINDOWS, 3);

set_window_value(15, 1, AG_WINDOW_LENGTH, 6);
set_window_value(15, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(15, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(15, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(15, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(15, 2, AG_WINDOW_LENGTH, 16);
set_window_value(15, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(15, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(15, 3, AG_WINDOW_LENGTH, 8);
set_window_value(15, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(15, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(15, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(15, 1);

set_hitbox_value(15, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(15, 1, HG_WINDOW, 2);
set_hitbox_value(15, 1, HG_LIFETIME, 4);
set_hitbox_value(15, 1, HG_HITBOX_Y, 16);
set_hitbox_value(15, 1, HG_WIDTH, 64);
set_hitbox_value(15, 1, HG_HEIGHT, 48);
set_hitbox_value(15, 1, HG_PRIORITY, 2);
set_hitbox_value(15, 1, HG_DAMAGE, 6);
set_hitbox_value(15, 1, HG_ANGLE, 290);
set_hitbox_value(15, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(15, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(15, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(15, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(15, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(15, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));