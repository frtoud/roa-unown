
//reset flag: set to TRUE explicitly in the attack
lev_bypass = false;
can_fast_fall = true;

// per-attack logic
switch(attack)
{
	//===========================
    case 1: //A
	{
        can_fast_fall = !(window >= 2);
	} break;
	//===========================
	case 2: //B
	{
        can_wall_jump = (window == 3 || window == 6);
		can_fast_fall =  !(window == 4 || window == 5);

		lev_bypass = window < 6;
		if (!free && window < 4)
		{
			window = 4;
			window_timer = 0;
			attack_end();
		}
		else if (window == 3)
		{
			if (special_down && !was_parried) window_timer = 0;
            do_faster_falling();
		}
		
		//hold special to continue attack from window 5
		set_window_value(attack, 5, AG_WINDOW_GOTO, (special_down && !was_parried) ? 3 : 0);
		//only active when falling
		set_hitbox_value(attack, 2, HG_WINDOW, (vsp > 1) ? 3 : 0);
	} break;
	//===========================
	case 3: //C
	{
        if (window == 1)
        {
            can_move = false;
            hsp *= 0.85;
            vsp *= 0.85;
            lev_bypass = true;
        }
        else if (window == 2 || window == 3)
		{
			unown_c_used = true;
            can_move = false;
            lev_bypass = true;
            move_cooldown[attack] = 60;
		    can_fast_fall = false;
		}
	} break;
	//===========================
	case 4: //D
	{
        if (window == 1)
        {
            vsp *= 0.85;
        }
        else if (window == 2)
        {
            vsp *= 0.45;
            can_move = false;
            if (hsp < unown_d_speed) hsp += unown_d_accel;
            lev_bypass = true;
		    can_fast_fall = false;
        }
	} break;
	//===========================
	case 6: //F
	{
        if (window == 1)
		{
			set_window_value(attack, 1, AG_WINDOW_GOTO, (left_down ? 6 : 0));
		}
	} break;
	//===========================
	case 7: //G
	{
        can_fast_fall = false;
		if (window <= 2)
		{
			if (vsp > 0) vsp *= 0.6;
		}
        if (window == 3)
        {
        	if (y < -40)
        	{
        		vsp = 0;
        	   var sd_hitbox = create_hitbox(attack, 2, x, y - 32);
        	   sd_hitbox.can_hit_self = true;
        	}
        	else if (special_down)
        	{
        		window_timer = 0;
        	}
        }
	} break;
	//===========================
	case 8: //H
	{
        if (window == 2 && window_timer == 1 && attack_down && !hitpause)
		{
			hsp = max(hsp - 4, -7);
		}
	} break;
	//===========================
	case 9: //I
	{
		can_fast_fall = !(window == 2 || window == 3);
		
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
	case 10: //J
	{
		if (window == 1)
		{
			unown_j_victim = noone;
		}
        else if (window == 4)
		{
			vsp *= 0.1; hsp *= 0.1;
			lev_bypass = true;
			can_fast_fall = false;
			
			if (instance_exists(unown_j_victim))
			{
				//keep in hitpause
				unown_j_victim.hitstop++;
				
				//lerp towards target pos
				var array_index = min(array_length(unown_j_positions) - 1, window_timer);
				unown_j_victim.x = 
				   lerp(unown_j_victim.x, x + unown_j_positions[array_index].x, 0.35);
				unown_j_victim.y =
				   lerp(unown_j_victim.y, y + unown_j_positions[array_index].y 
				                            + (unown_j_victim.char_height/2), 0.35);
			}
			else { unown_j_victim = noone; }
		}
		
	} break;
	//===========================
	case 12: //L
	{
        can_wall_jump = (window == 3 || window == 7);

		lev_bypass = !(window == 5 || window == 7);
		can_fast_fall = !(window == 6);
		if (window < 4)
		{
            if (!free)
            {
                window = 4;
                window_timer = 0;
                attack_end();
                destroy_hitboxes();
                shake_camera(12, 7);
            }
            else if (has_hit || has_hit_player)
            {
                window = 6;
                window_timer = 0;
                attack_end();
                destroy_hitboxes();
                has_hit_player = false;
                has_hit = false;
            }
            else if (window == 3)
            {
                if (special_down && !was_parried) window_timer = 0;
                do_faster_falling();
            }
		}
		
		//hold special to continue attack from window 6
		set_window_value(attack, 6, AG_WINDOW_GOTO, (special_down && !was_parried) ? 3 : 0);
		//only active when falling
		set_hitbox_value(attack, 2, HG_WINDOW, (vsp > 1) ? 3 : 0);
	} break;
	//===========================
    case 14: //N
    {
        lev_bypass = (window == 2 || window == 4);
        super_armor = (window == 2);
        
        if !(window == 3 || window == 5)
        {
        	can_move = false;
        	can_fast_fall = false;
	        //Dampen momentum
	        hsp *= 0.85;
	        vsp *= 0.85;
        }
        
        if (window == 2)
        {
			user_event(2); //Counter logic is in there
			move_cooldown[UNOWN_ATK.N] = unown_n_cooldown;
        }
    }break;
	//===========================
    case 17: //Q
    {
        if ((window == 3) || (window == 2 && has_hit_player))
        && (strong_down)
        {
        	window = 4;
        	window_timer = 0;
        	hsp *= 0.75;
        	vsp *= 0.75;
        	//hitpause case
        	old_hsp *= 0.75;
        	old_vsp *= 0.75;
        	destroy_hitboxes();
        }
        else if (window == 4)
        {
        	lev_bypass = true;
			can_fast_fall = false;
        	vsp *= 0.55;
        }
    }break;
	//===========================
    case 18: //R
    {
        can_fast_fall = false;
        lev_bypass = (window < 4);
        
        if (!free && window < 3)
        {
        	destroy_hitboxes();
        	window = 4;
        	window_timer = 0;
        }
        else if (window == 2) && (special_down || state_timer < 20)
        {
        	if (window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ))
            {
                window_timer = 0;
                attack_end();
            }
        }
    }break;
	//===========================
    case 20: //T
    {
        can_fast_fall = false;
        if (window == 1 && window_timer <= 1)
        {
            unown_t_times_through = 0;
        }

        if (window == 3) && (special_down)
        {
            //VSP boost
            vsp -= (up_down && vsp > -4) ? 0.8 : ((vsp > 0) ? 0.5 : 0.2);

            if (unown_t_times_max > unown_t_times_through)
            && (window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ))
            {
                window_timer = 0;
                unown_t_times_through++;
                attack_end();
            }
        }
    }break;
	//===========================
    case 21: //U
    {
		can_fast_fall = !unown_u_bounced;
        if (window == 1 && window_timer <= 1)
        {
            unown_u_bounced = false;
        }
        else if (!unown_u_bounced && has_hit && !hitpause)
        {
        	unown_u_bounced = true;
        	vsp = min(-5, vsp -3);
        }
    }break;
	//===========================
    case 22: //V
    {
        if (window == 2 && has_hit)
        {
        	window = 4;
        	window_timer = 0;
        	destroy_hitboxes();
        }
        else if (window == 4 && !hitpause)
        {
        	vsp = max(fast_fall, vsp);
        }
    }break;
	//===========================
    case 25: //Y
    {
        can_fast_fall = false;
        hsp *= 0.75; 
        if (window == 1)
        {
        	vsp *= 0.75;
        }
        else if (window == 2)
        {
        	can_move = false;
        	if (window_timer == 1 && !hitpause)
        	{
        		unown_y_waterhitbox = create_hitbox(attack, 2, x, y);
        		unown_y_water.tip_x = x - 1;
        		unown_y_water.tip_y = y + get_hitbox_value(attack, 0, HG_HITBOX_Y);
        		unown_y_water.timer = unown_y_water_active_time + unown_y_water_dying_time;
        	}

            unown_y_water.start_x = x - 1;
        	unown_y_water.start_y = y + 24;
        	
        	if instance_exists(unown_y_waterhitbox)
        	{
        		var distance = 12 + unown_y_water.tip_y - unown_y_water.start_y;
        		unown_y_waterhitbox.hitbox_timer = 0;
        		unown_y_waterhitbox.y_pos = distance/2 + 24;
        		unown_y_waterhitbox.image_yscale = distance/200.0;
        	}
        }
    }break;
	//===========================
    case 28: //?
    {
    	can_fast_fall = false;
    	lev_bypass = true;
    }break;
	//===========================
    case AT_EXTRA_1: //Pseudoparry
    {
    	can_fast_fall = false;
        if (window == 1) 
        {
            perfect_dodging = true;
            lev_bypass = true;
        }
        has_hit_player = perfect_dodged;
    }break;
	//======================================================
    case AT_TAUNT: //Hidden Power
    {
    	if (window == 1 && window_timer == 1)
    	{
    		if (unown_best_word_length > 1)
    		{
    			//vfx
    			inward_hidden_power_timer = inward_hidden_power_timer_max;
            	inward_hidden_power_fast = true;
            	
            	//calculate damage boost
            	var bonus = unown_current_bonus
            	   + (unown_letter_exclamation_bonus * (string_length(unown_text_buffer)
            	       - min(unown_best_word_length, array_length(unown_word_length_bonus))));
            	
            	//setup hitboxes
            	var hb_size = floor(min(200, bonus * 100 + 60));
            	hidden_power_strength_vfx = (hb_size > 180 ? 3 : (hb_size > 100 ? 2 : 1));
                set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, hb_size);
                set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, hb_size);
                set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, max(hb_size - 80, 0));
                set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, max(hb_size - 80, 0));
    			set_num_hitboxes(attack, hb_size > 80 ? 2 : 1);
    			
    			var hb_damage = floor(bonus * 15);
                set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, hb_damage);
                set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, hb_damage + 6); 
                
    			var hb_kb = bonus * 5 + 5;
				set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, hb_kb);
				set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, hb_kb + 3);
				
    			var hb_scaling = bonus * 0.4 + 0.5;
				set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, hb_scaling);
				set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, hb_scaling + 0.25);
				
    			var hb_hitpause = floor(bonus * 16); 
				set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, hb_hitpause);
				set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, hb_hitpause + 4);
    		}
    		else
    		{
    			reset_num_hitboxes(attack);
    		}
    	}
    	else if (window == 1)
    	{
    		hsp *= 0.75;
    		vsp *= (vsp > 0 ? 0.75 : 0.95);
    	}
    }break;
	//======================================================
	default: break;
}

//prevent attacks from being able to land on platforms when the inputs are there to go through
fall_through = (down_down) && (!lev_bypass);


//=====================================================================
#define do_faster_falling()
//make gravity pull harder than max_fall speeds during this move
{
    if (vsp >= max_fall && vsp < fast_fall)
    {
        vsp += gravity_speed;
    }
}