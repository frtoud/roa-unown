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
    if (state == PS_PRATFALL)
    {
        set_state(PS_IDLE_AIR);
    }
}

if (!fast_falling && down_hard_pressed)
{
    vsp = fast_fall;
    fast_falling = true;
}

//=============================================================================
#define do_levitate(lev_min, lev_mid, lev_max)
{
    lev_is_grounded = false;
        lev_status = "none"
    
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
    
    var lerp_factor = min(1, lev_grounded_timer / 30.0);
    
    if (low_test || mid_test || high_test)
    {
        lev_is_grounded = true;
        vsp -= gravity_speed; //cancel gravity
    }
    
    var hoverspeed = 0.20;
    
    if (low_test)
    {
        lev_status = "low"
        vsp = max(-3, min(vsp - 2, 3))
    }
    else if (mid_test)
    {
        lev_status = "mid"
        vsp = min(max(2, vsp/2), vsp - hoverspeed);
    }
    else if (high_test)
    {
        lev_status = "high"
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
 