
// Unown animation overrides
var cur_form_data = unown_form_data[unown_current_form];
var cur_form_sprites = cur_form_data.left_sprites;

spr_dir = unown_looking_dir;
if (unown_looking_dir < 0)
{
    if (cur_form_data.right_sprites != noone)
    {
        //asymmetry: flip spr_dir
        cur_form_sprites = cur_form_data.right_sprites;
        spr_dir = 1;
    }
    //else; symmetrical. keep spr_dir behavior
}

switch (state)
{
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
    {
        spr_dir = 1; //forced direction: Unown attacks are never flipped
    } break;
    case PS_WALL_JUMP:
    case PS_DOUBLE_JUMP:
    {
        sprite_index = cur_form_sprites.jump;
        image_index = min(2, floor(state_timer/8))
    } break;
    case PS_LAND:
    case PS_PRATFALL:
    {
        //sprite_index = cur_form_sprites.prat;
        //image_index = ?
    } break;
    default: print("encountered state " + get_state_name( state ));
    case PS_SPAWN:
    case PS_IDLE:
    case PS_IDLE_AIR:
    {
        sprite_index = cur_form_sprites.jump;
        image_index = 2;
    } break;
}