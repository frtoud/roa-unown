
//reset flag: set to TRUE explicitly in the attack
lev_bypass = false;

// per-attack logic
switch(attack)
{
	//===========================
	case 2: //B
	{
		lev_bypass = window < 6;
		if (!free && window < 4)
		{
			window = 4;
			window_timer = 0;
			attack_end();
		}
		else if (window == 3)
		{
			if (special_down) window_timer = 0;
		}
		
		//hold special to continue attack from window 5
		set_window_value(attack, 5, AG_WINDOW_GOTO, special_down ? 3 : 0);
		//only active when falling
		set_hitbox_value(attack, 2, HG_WINDOW, (vsp > 1) ? 3 : 0);
		
		
	} break;
	//===========================
	case 9: //I
	{
		if (window == 1 && window_timer == 1)
		{
			unown_i_angle = 90;
		}
		else if (window <= 2)
		{
			
			if (window == 1 && !special_down 
			&& 	window_timer > get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME))
			{
			    window = 2;
			    window_timer = 0;
			}
			else if (window == 2 
		    && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
		    {
		     	//reposition hitboxes
		     	unown_i_angle = (360 + unown_i_angle) % 180;
		     	
		     	var unit_distance = get_hitbox_value(attack, 0, HG_HITBOX_X);
		     	var unit_x = lengthdir_x(unit_distance, unown_i_angle);
		     	var unit_y = lengthdir_y(unit_distance, unown_i_angle);
		     	
		     	for (var i = 1; i <= get_num_hitboxes(attack); i++)
		     	{
				    var mult_dist = (i % 2 == 0 ? 1 : -1) * floor((i+1)/2);
				    set_hitbox_value(attack, i, HG_HITBOX_X, mult_dist * unit_x);
				    set_hitbox_value(attack, i, HG_HITBOX_Y, -unown_eye_center_offset + mult_dist * unit_y);
		     	}
		    }
			else if (!joy_pad_idle)
			{
				var lerp_strength = (window = 1 ? 0.35 : 0.07);
				unown_i_angle = round(lerp(unown_i_angle, joy_dir, lerp_strength));
			}
		}
		else if (window == 4 && window_timer > 5)
		{
			unown_i_angle = round(lerp(unown_i_angle, 90, 0.15));
		}
	} break;
	//===========================
	default: break;
}


