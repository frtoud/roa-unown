
//================================================================
// Forms initialization
// expected structure:
/*
{
    letter: string
    hurtbox: sprite
    atk: number
    right_sprites: { idle, turn, jump, hurt, bighurt, praftall }
    left_sprites: either noone (symmetrical) or a set like right_sprites
}
*/

//shortcut from letters-to-numbers
UNOWN_ATK = { A:1, B:2, C:3, D:4, E:5, F:6, G:7, H:8, I:9, J:10,K:11,L:12,M:13,N:14,
              O:15,P:16,Q:17,R:18,S:19,T:20,U:21,V:22,W:23,X:24,Y:25,Z:26,EX:27,QM:28 };

unown_form_data[28] = noone;
make_letter_data( 1, "A", true,  sprite_get("hurtbox_A"), noone);
make_letter_data( 2, "B", false, sprite_get("hurtbox_A"), noone);
make_letter_data( 4, "D", false, sprite_get("hurtbox_D"), sprite_get("hurtbox_D_left"));
make_letter_data( 5, "E", false, sprite_get("hurtbox_D"), sprite_get("hurtbox_D_left"));
make_letter_data( 8, "H", false, sprite_get("hurtbox_O"), noone);
make_letter_data( 9, "I", true,  sprite_get("hurtbox_I"), noone);
make_letter_data(11, "K", false, sprite_get("hurtbox_I"), noone);
make_letter_data(15, "O", true,  sprite_get("hurtbox_O"), noone);
make_letter_data(24, "X", true,  sprite_get("hurtbox_X"), noone);

//================================================================
#define make_letter_data(index, letter_str, symmetry, hurtbox_spr, left_hurtbox_spr)
{
    var anim_list = [
    "idle", 
    "hurt",
    "turn",
    "jump",
    "prat"];

    var data = 
    {
        letter: letter_str,
        hurtbox: hurtbox_spr,
        left_hurtbox: left_hurtbox_spr,
        right_sprites: {},
        left_sprites: (symmetry ? noone : {}),
        atk: index
    }

    unown_form_data[index] = data;
    
    var OFFSET_X = 32;
    var OFFSET_Y = 48;

    //offset change code here because I am lazy
    for (var i = 0; i < array_length(anim_list); i++)
    {
        var spr_name = anim_list[i] + "_" + letter_str;
        variable_instance_set(data.right_sprites, anim_list[i], sprite_get(spr_name));
        sprite_change_offset(spr_name, OFFSET_X, OFFSET_Y);

        if (data.left_sprites != noone)
        {
            variable_instance_set(data.left_sprites, anim_list[i], sprite_get(spr_name+"_left"));
            sprite_change_offset(spr_name+"_left", OFFSET_X, OFFSET_Y);
        }
    }

}