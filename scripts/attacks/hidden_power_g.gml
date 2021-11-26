var atk = 7; // G
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_G"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_G_hurt"));
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(atk, AG_NUM_WINDOWS, 4);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_place"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 18);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, 2, AG_WINDOW_CUSTOM_GRAVITY, -2 * gravity_speed);

//looping
set_window_value(atk, 3, AG_WINDOW_LENGTH, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 5); //manually handled
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, 3, AG_WINDOW_CUSTOM_GRAVITY, -1.5 * gravity_speed);

set_window_value(atk, 4, AG_WINDOW_TYPE, 7);
set_window_value(atk, 4, AG_WINDOW_LENGTH, 24);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, 4, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_num_hitboxes(atk, 0);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 4);
set_hitbox_value(atk, 1, HG_HITBOX_X, 30);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -52);
set_hitbox_value(atk, 1, HG_WIDTH, 42);
set_hitbox_value(atk, 1, HG_HEIGHT, 64);
set_hitbox_value(atk, 1, HG_SHAPE, 1);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 6);
set_hitbox_value(atk, 1, HG_ANGLE, 30);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//self-destruct hitbox
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_HITBOX_X, 0);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 2, HG_LIFETIME, 3);
set_hitbox_value(atk, 2, HG_WIDTH, 5);
set_hitbox_value(atk, 2, HG_HEIGHT, 5);
set_hitbox_value(atk, 2, HG_SHAPE, 0);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 0);
set_hitbox_value(atk, 2, HG_ANGLE, 90);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, 1);

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.G, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("g" not in unown_dictionary) unown_dictionary.g = make_trie_G();
//================================================================
//contains words starting with G
#define make_trie_G()
    return {};