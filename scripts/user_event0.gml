
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
    
    speed: number // air_accel: range 0.2 - 0.4
    weight: number // knockback_adj: range 0.9 - 1.2
}
*/

//stats
#macro SPEED_SLOW    0.2
#macro SPEED_MEDIUM  0.3
#macro SPEED_FAST    0.35
#macro SPEED_FASTER  0.4

//higher weight = low KB mult
#macro WEIGHT_LOW     1.1
#macro WEIGHT_MEDIUM  1.0
#macro WEIGHT_HIGH    0.9


//shortcut from letters-to-numbers
UNOWN_ATK = { A:1, B:2, C:3, D:4, E:5, F:6, G:7, H:8, I:9, J:10,K:11,L:12,M:13,N:14,
              O:15,P:16,Q:17,R:18,S:19,T:20,U:21,V:22,W:23,X:24,Y:25,Z:26,EM:27,QM:28 };

//hurtboxes
var hurt_A = sprite_get("hurtbox_A");
var hurt_D = sprite_get("hurtbox_D"); var hurt_D_left = sprite_get("hurtbox_D_left");
var hurt_F = sprite_get("hurtbox_F"); var hurt_F_left = sprite_get("hurtbox_F_left");
var hurt_I = sprite_get("hurtbox_I");
var hurt_O = sprite_get("hurtbox_O");
var hurt_T = sprite_get("hurtbox_T");
var hurt_X = sprite_get("hurtbox_X");
var hurt_EM = sprite_get("hurtbox_EM");

//Animation data (mostly)
unown_form_data[28] = noone;
make_letter_data( 1, "A", { hurtbox:hurt_A });
make_letter_data( 2, "B", { hurtbox:hurt_A, asymmetric: true });
make_letter_data( 3, "C", { hurtbox:hurt_O, asymmetric: true });
make_letter_data( 4, "D", { hurtbox:hurt_D, asymmetric: true, left_hurtbox:hurt_D_left });
make_letter_data( 5, "E", { hurtbox:hurt_D, asymmetric: true, left_hurtbox:hurt_D_left });
make_letter_data( 6, "F", { hurtbox:hurt_F, asymmetric: true, left_hurtbox:hurt_F_left });
make_letter_data( 7, "G", { hurtbox:hurt_A, asymmetric: true });
make_letter_data( 8, "H", { hurtbox:hurt_O, asymmetric: true });
make_letter_data( 9, "I", { hurtbox:hurt_I });
make_letter_data(10, "J", { hurtbox:hurt_A, asymmetric: true, attack_index:AT_DSPECIAL_2 }); //DAN WHY
make_letter_data(11, "K", { hurtbox:hurt_I, asymmetric: true });
make_letter_data(12, "L", { hurtbox:hurt_A, asymmetric: true });
make_letter_data(13, "M", { hurtbox:hurt_O });
make_letter_data(14, "N", { hurtbox:hurt_X, asymmetric: true });
make_letter_data(15, "O", { hurtbox:hurt_O });
make_letter_data(16, "P", { hurtbox:hurt_A, asymmetric: true });
make_letter_data(17, "Q", { hurtbox:hurt_F, asymmetric: true, left_hurtbox:hurt_F_left });
make_letter_data(18, "R", { hurtbox:hurt_A, asymmetric: true });
make_letter_data(19, "S", { hurtbox:hurt_O, asymmetric: true });
make_letter_data(20, "T", { hurtbox:hurt_T });
make_letter_data(21, "U", { hurtbox:hurt_O });
make_letter_data(22, "V", { hurtbox:hurt_T, asymmetric: true });
make_letter_data(23, "W", { hurtbox:hurt_T });
make_letter_data(24, "X", { hurtbox:hurt_X });
make_letter_data(25, "Y", { hurtbox:hurt_A });
make_letter_data(26, "Z", { hurtbox:hurt_X, asymmetric: true });

make_letter_data(27,"EM", { hurtbox:hurt_EM, typable:false, attack_index:AT_TAUNT });
make_letter_data(28,"QM", { hurtbox:hurt_EM, typable:false, asymmetric: true });

//Stats (defaults to MEDIUM)
set_letter_data(UNOWN_ATK.A, { });
set_letter_data(UNOWN_ATK.B, { speed:SPEED_SLOW,   weight:WEIGHT_LOW });
set_letter_data(UNOWN_ATK.C, { speed:SPEED_SLOW });
set_letter_data(UNOWN_ATK.D, { });
set_letter_data(UNOWN_ATK.E, { });
set_letter_data(UNOWN_ATK.F, { });
set_letter_data(UNOWN_ATK.G, { speed:SPEED_SLOW,   weight:WEIGHT_LOW });
set_letter_data(UNOWN_ATK.H, { speed:SPEED_SLOW });
set_letter_data(UNOWN_ATK.I, { speed:SPEED_FASTER, weight:WEIGHT_LOW });
set_letter_data(UNOWN_ATK.J, { speed:SPEED_FAST,   weight:WEIGHT_LOW });
set_letter_data(UNOWN_ATK.K, { speed:SPEED_FAST,   weight:WEIGHT_LOW });
set_letter_data(UNOWN_ATK.L, { speed:SPEED_SLOW,   weight:WEIGHT_HIGH });
set_letter_data(UNOWN_ATK.M, { speed:SPEED_SLOW,   weight:WEIGHT_HIGH });
set_letter_data(UNOWN_ATK.N, { speed:SPEED_SLOW,   weight:WEIGHT_HIGH });
set_letter_data(UNOWN_ATK.O, { speed:SPEED_SLOW,   weight:WEIGHT_HIGH });
set_letter_data(UNOWN_ATK.P, { speed:SPEED_FAST });
set_letter_data(UNOWN_ATK.Q, { speed:SPEED_FASTER, weight:WEIGHT_LOW });
set_letter_data(UNOWN_ATK.R, { speed:SPEED_FASTER, weight:WEIGHT_HIGH });
set_letter_data(UNOWN_ATK.S, {                     weight:WEIGHT_LOW });
set_letter_data(UNOWN_ATK.T, { speed:SPEED_FASTER, weight:WEIGHT_LOW });
set_letter_data(UNOWN_ATK.U, {                     weight:WEIGHT_HIGH });
set_letter_data(UNOWN_ATK.V, { speed:SPEED_FAST });
set_letter_data(UNOWN_ATK.W, { });
set_letter_data(UNOWN_ATK.X, { speed:SPEED_FAST });
set_letter_data(UNOWN_ATK.Y, { });
set_letter_data(UNOWN_ATK.Z, { speed:SPEED_FAST });
set_letter_data(UNOWN_ATK.EM,{ speed:SPEED_FAST });
set_letter_data(UNOWN_ATK.QM,{ speed:SPEED_FAST });

//================================================================
#define make_letter_data(index, letter_str, input_data)
{
    //default arguments
    var hurtbox_spr = ("hurtbox" in input_data) ? input_data.hurtbox : sprite_get("hurtbox_X");
    var left_hurtbox_spr = ("left_hurtbox" in input_data) ? input_data.left_hurtbox : noone;
    var asymmetric = ("asymmetric" in input_data) ? input_data.asymmetric : false;
    var typable = ("typable" in input_data) ? input_data.typable : true;
    var attack_index = ("attack_index" in input_data) ? input_data.attack_index : index;
    
    var form_speed = ("speed" in input_data) ? input_data.speed : SPEED_MEDIUM;
    var form_weight = ("weight" in input_data) ? input_data.weight : WEIGHT_MEDIUM;
    
    var anim_list = [
    "idle", 
    "hurt",
    "turn",
    "jump",
    "prat"];

    var data = 
    {
        letter: typable ? letter_str : noone,
        hurtbox: hurtbox_spr,
        left_hurtbox: left_hurtbox_spr,
        right_sprites: {},
        left_sprites: (asymmetric ? {} : noone),
        
        speed: form_speed,
        weight: form_weight,
        
        atk: attack_index
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

#define set_letter_data(index, input_data)
{
    var keys = variable_instance_get_names(input_data);
    var target = unown_form_data[index];
    for (var k = 0; k < array_length(keys); k++)
    {
        variable_instance_set(target, keys[k],
                                variable_instance_get(input_data, keys[k]));
    }
}