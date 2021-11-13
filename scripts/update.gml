// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

//if phone_cheats[CHEAT_FLY] && !shield_down vsp = -1;

//=============================================================
//Levitate
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

//=============================================================

if (state_cat == SC_AIR_NEUTRAL) && taunt_pressed
{
    set_attack(AT_TAUNT);
}

//=============================================================
//turning animation
unown_turning_timer = max(0, unown_turning_timer - 1);
if (state == PS_IDLE_AIR)
&& (unown_turning_timer == unown_turning_time_per_frame)
{
    spr_dir = unown_looking_dir;
}

// assymetrical hurtboxes
if (prev_spr_dir != spr_dir)
&& (unown_form_data[unown_current_form].left_hurtbox != noone)
{
    hurtbox_spr = (spr_dir > 0) ? unown_form_data[unown_current_form].hurtbox
                                : unown_form_data[unown_current_form].left_hurtbox;
    if !(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
    { hurtboxID.sprite_index = hurtbox_spr; }
}
prev_spr_dir = spr_dir;

//=============================================================================
#define do_levitate(lev_min, lev_mid, lev_max)
{
    lev_is_grounded = false;
    var lev_prev_state = lev_state;
    
    //cases where levitate turns off
    if (state_cat == SC_HITSTUN) || (vsp < -4)
    || (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && lev_bypass
    || (state == PS_AIR_DODGE) //allows wavedash
    {
        lev_state = 0;
        if (lev_prev_state != 0) { lev_state_timer = 0; }
                            else { lev_state_timer++; }
        return;
    }
    //else
    lev_bypass = false;
    
    var check_plats = !((lev_prev_state == 0 && down_down) || down_hard_pressed);
    
    var low_test = ground_test(lev_min, check_plats);
    var mid_test = ground_test(lev_mid, check_plats);
    var high_test= ground_test(lev_max, check_plats);
    
    //0 aerial, 1 high-lev, 2 mid-lev, 3 low-lev
    lev_state = (low_test + mid_test + high_test);
    if (lev_prev_state != lev_state) { lev_state_timer = 0; }
                                else { lev_state_timer++; }
    
    if (lev_state > 0)
    {
        lev_is_grounded = true;
        vsp -= gravity_speed; //cancel gravity
        
        switch (lev_state)
        {
            case 1: //high: from negative to positive VSP
            {
                var target_vsp = min(lev_target_vsp, -lev_target_vsp + lev_state_timer * lev_target_accel);
                vsp += (vsp >= target_vsp) ? lev_target_accel : 0.6 * gravity_speed;
                
                //unstuck from VSP 0
                if (lev_prev_state == 2) 
                { vsp = lerp(vsp, -lev_target_vsp, 0.35); }
            }break;
            case 2: //mid: from positive to negative VSP
            {
                var target_vsp = max(-lev_target_vsp, lev_target_vsp - lev_state_timer * lev_target_accel);
                vsp -= (vsp <= target_vsp) ? lev_target_accel : 2 * gravity_speed;
                
                //unstuck from VSP 0
                if (lev_prev_state == 1) 
                { vsp = lerp(vsp, lev_target_vsp, 0.35); }
            }break;
            case 3: //low: hard negative pushback
            {
                vsp = max(-3, min(vsp - max(gravity_speed, min(2, vsp)), 6));
            }break;
        }
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
 