
// Unown animation overrides
var cur_form_data = unown_form_data[unown_current_form];
var cur_form_sprites = cur_form_data.right_sprites;

if (spr_dir < 0) && (cur_form_data.left_sprites != noone)
{
    //asymmetry case
    cur_form_sprites = cur_form_data.left_sprites;
}

switch (state)
{
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
    {
        spr_dir = 1; //forced direction: Unown attacks are never flipped
        unown_turning_timer = unown_turning_time_per_frame + 1;
        
        if (attack == UNOWN_ATK.F)  && !hitpause
        && (window == 3 || window == 7) && (window_timer == 0)
        {
            spawn_hit_fx(x + (window == 3 ? 36 : -36), y - 30, 14);
        }
        
    } break;
    case PS_HITSTUN:
    case PS_HITSTUN_LAND:
    {
        sprite_index = cur_form_sprites.hurt;
    } break;
    case PS_WALL_JUMP:
    case PS_WALL_TECH:
    case PS_DOUBLE_JUMP:
    {
        unown_looking_dir = spr_dir;
        sprite_index = cur_form_sprites.jump;
        image_index = min(2, floor(state_timer/8))
    } break;
    case PS_LAND:
    case PS_WAVELAND:
    case PS_PRATFALL:
    {
        sprite_index = cur_form_sprites.prat;
        //image_index = ?
    } break;
    case PS_AIR_DODGE:
    {
        //yes, dodges use windows. Dan pls.
        sprite_index = (window == 1) ? empty_spr : cur_form_sprites.jump;
    } break;
    default: print("encountered state " + get_state_name( state ));
    case PS_SPAWN:
    case PS_IDLE:
    case PS_TUMBLE:
    case PS_IDLE_AIR:
    {
        if (unown_turning_timer > 0)
        {
            sprite_index = cur_form_sprites.turn;
            image_index = 0;
        }
        else
        {
            sprite_index = cur_form_sprites.jump;
            //sprite_index = cur_form_sprites.idle;
            image_index = 2; //0;
        }
    } break;
}