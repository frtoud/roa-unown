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

//todo: move these active windows definition to their respective files
set_window_value(UNOWN_ATK.A, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.B, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.C, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.D, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.E, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.F, 3, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.F, 7, AG_UNOWN_WINDOW_ACTIVE, true);
//set_window_value(UNOWN_ATK.G, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.H, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.I, 3, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.J, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.K, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.L, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.M, 2, AG_UNOWN_WINDOW_ACTIVE, true);
//set_window_value(UNOWN_ATK.N, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.O, 2, AG_UNOWN_WINDOW_ACTIVE, true);
//set_window_value(UNOWN_ATK.P, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.Q, 2, AG_UNOWN_WINDOW_ACTIVE, true);
//set_window_value(UNOWN_ATK.R, 2, AG_UNOWN_WINDOW_ACTIVE, true);
//set_window_value(UNOWN_ATK.S, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.T, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.U, 2, AG_UNOWN_WINDOW_ACTIVE, true);
//set_window_value(UNOWN_ATK.V, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.W, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.X, 2, AG_UNOWN_WINDOW_ACTIVE, true);
//set_window_value(UNOWN_ATK.Y, 2, AG_UNOWN_WINDOW_ACTIVE, true);
//set_window_value(UNOWN_ATK.Z, 2, AG_UNOWN_WINDOW_ACTIVE, true);

//!?
set_window_value(AT_TAUNT, 2, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.QM, 1, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(AT_EXTRA_1, 1, AG_UNOWN_WINDOW_ACTIVE, true);
