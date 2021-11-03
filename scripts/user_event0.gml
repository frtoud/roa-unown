
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
uno_form_data[28] = noone;
make_letter_data( 1, "A", true,  noone);
make_letter_data( 4, "D", false, noone);
make_letter_data(15, "O", true,  noone);

//================================================================
#define make_letter_data(number, letter, symmetry, hurtbox)
{
    var anim_list = [
    "idle", 
    "hurt",
    "turn",
    "jump",
    "prat"];

    var data  = 
    {
        letter: letter,
        hurtbox: hurtbox,
        right_sprites: {},
        left_sprites: (symmetry ? noone : {}),
        atk: number
    }

    unown_form_data[number] = data;

    //offset change code here because I am lazy
    for (var i = 0; i < array_length(anim_list); i++)
    {
        var spr_name = anim_list[i] + "_" + letter;
        variable_instance_set(data.right_sprites, anim_list[i], sprite_get(spr_name));
        sprite_change_offset(spr_name, 32, 42);

        if (data.left_sprites != noone)
        {
            variable_instance_set(data.left_sprites, anim_list[i], sprite_get(spr_name+"_left"));
            sprite_change_offset(spr_name+"_left", 32, 42);
        }
    }

}