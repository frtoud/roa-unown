// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

//if phone_cheats[CHEAT_FLY] && !shield_down vsp = -1;

do_levitate(uno_lev_height_min + uno_lev_offset,
            uno_lev_height_mid + uno_lev_offset,
            uno_lev_height_max + uno_lev_offset);

if (uno_lev_is_grounded)
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

//=============================================================================
#define do_levitate(lev_min, lev_mid, lev_max)
{
    uno_lev_is_grounded = false;
    
    //cases where levitate turns off
    if (state_cat == SC_HITSTUN) return;
    if (vsp < -8) return;
    
    var check_plats = true;//down_
    
    if ground_test(lev_min, check_plats)
    {
        uno_lev_is_grounded = true;
        vsp = max(-3, min(vsp - gravity_speed - 0.5, 3))
    }
    else if ground_test(lev_mid, check_plats)
    {
        uno_lev_is_grounded = true;
        vsp = max(vsp - gravity_speed)
    }
    else if ground_test(lev_max, check_plats)
    {
        uno_lev_is_grounded = true;
        vsp = max(-4, vsp - gravity_speed * 0.5)
    }
    
    
}

#define ground_test(ydist, check_plat)

var val = place_meeting(x, y+ydist, asset_get("par_block"));
if (check_plat && !val)
{
    var left_check = 18;
    var right_check = 18;
    var val = (noone != collision_rectangle(x+left_check, y+1, x-right_check, y+ydist, 
                                            asset_get("par_jumpthrough"), true, true)
            && noone == collision_line(x+left_check, y-2, x-right_check, y-2, 
                                       asset_get("par_jumpthrough"), true, true));
}

return val;
 