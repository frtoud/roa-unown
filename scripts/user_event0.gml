
//================================================================
// Forms initialization
uno_form_data = [];
// expected structure:
/*
{
    left_sprites: { idle, turn, jump, hurt, bighurt, praftall }
    right_sprites: either noone (symmetrical) or a set like left_sprites
}
*/


// A
unown_form_data[1] = 
{
    left_sprites: {
        idle: sprite_get("idle_A"),
        jump: sprite_get("jump_A"),
        prat: sprite_get("prat_A")
    },
    right_sprites: noone, //symmetrical
    atk: AT_JAB
}

