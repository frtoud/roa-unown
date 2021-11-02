
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
make_letter_data( 1, "A", true,  AT_JAB,       noone);
make_letter_data( 4, "D", false, AT_FTILT,     noone);

//================================================================
#define make_letter_data(number, letter, symmetry, index, hurtbox)
{
    unown_form_data[number] = 
    {
        letter: letter,
        hurtbox: hurtbox,
        right_sprites: {
            idle: sprite_get("idle_"+letter),
            turn: sprite_get("turn_"+letter),
            jump: sprite_get("jump_"+letter),
            prat: sprite_get("prat_"+letter)
        },
        left_sprites: (symmetry ? noone : {
            idle: sprite_get("idle_"+letter+"_left"),
            turn: sprite_get("turn_"+letter+"_left"),
            jump: sprite_get("jump_"+letter+"_left"),
            prat: sprite_get("prat_"+letter+"_left")
        }),
        atk: index
    }
}