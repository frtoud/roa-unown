// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

//if phone_cheats[CHEAT_FLY] && !shield_down vsp = -1;

do_levitate(uno_lev_height_min + uno_lev_offset,
            uno_lev_height_mid + uno_lev_offset,
            uno_lev_height_max + uno_lev_offset);

if (lev_is_grounded)
{
    //reset once-per-airtime stuff!
    djumps = 0;
    has_walljump = true;
    has_airdodge = true;

    switch (state)
    {
        case PS_PRATFALL: 
            //todo: add timer for simulated pratland
            set_state(PS_IDLE_AIR);
        break;

        case PS_IDLE_AIR:
            //simulated walkturn
            if (left_down - right_down == unown_looking_dir)
            && !(unown_turning_timer > 0)
            {
                unown_looking_dir *= -1;
                unown_turning_timer = unown_turning_time_per_frame * 2;
            }
        break;
    }
}

if (!fast_falling && down_hard_pressed && !lev_is_grounded)
{
    vsp = fast_fall;
    fast_falling = true;
}

if (state_cat == SC_AIR_NEUTRAL) && taunt_pressed
{
    set_attack(AT_TAUNT);
}

unown_turning_timer = max(0, unown_turning_timer - 1);

if (state == PS_IDLE_AIR)
&& (unown_turning_timer == unown_turning_time_per_frame)
{
    spr_dir = unown_looking_dir;
}

//=============================================================================
#define do_levitate(lev_min, lev_mid, lev_max)
{
    lev_is_grounded = false;
    
    //cases where levitate turns off
    if (state_cat == SC_HITSTUN)
    || (vsp < -4)
    {
        return;
    }
    //else
    
    var check_plats = !down_down;
    
    var low_test = ground_test(lev_min, check_plats);
    var mid_test = ground_test(lev_mid, check_plats);
    var high_test= ground_test(lev_max, check_plats);
    
    if (low_test || mid_test || high_test)
    {
        lev_is_grounded = true;
        vsp -= gravity_speed; //cancel gravity
    }
    
    var hoverspeed = 0.20;
    
    if (low_test)
    {
        vsp = max(-3, min(vsp - 2, 3))
    }
    else if (mid_test)
    {
        vsp = min(max(2, vsp/2), vsp - hoverspeed);
    }
    else if (high_test)
    {
        vsp = max(min(-2, vsp/2), vsp + hoverspeed);
    }
    
    return;
}

//=============================================================================
#define ground_test(ydist, check_plat)

var val = place_meeting(x, y+ydist, asset_get("par_block"));
if (check_plat && !val)
{
    var left_check = 18;
    var right_check = 18;
    //can't use place_meeting here
    //plats could screw detection by overlapping with top half of collider
    var val = (noone != collision_rectangle(x+left_check, y+1, x-right_check, y+ydist, 
                                            asset_get("par_jumpthrough"), true, true)
            && noone == collision_line(x+left_check, y-2, x-right_check, y-2, 
                                       asset_get("par_jumpthrough"), true, true));
}

return val;
 