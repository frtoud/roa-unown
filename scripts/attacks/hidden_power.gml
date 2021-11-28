var atk = AT_TAUNT;// !
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_hidden_power"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_hidden_power_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, sound_get("gsc_unown"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, get_window_value(atk, 1, AG_WINDOW_LENGTH) - 1);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 6);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(atk, 0);

//================================================================
//WORD DATA
set_window_value(AT_TAUNT, 2, AG_UNOWN_WINDOW_ACTIVE, true);
//no words to fill in


