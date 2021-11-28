var atk = 6; // F
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_F"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_F_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 10);

//common startup (able to turnaround)
set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);

//startup (Right)
set_window_value(atk, 2, AG_WINDOW_LENGTH, 9);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_window_value(atk, 2, AG_WINDOW_SFX_FRAME, get_window_value(atk, 2, AG_WINDOW_LENGTH) - 1);
//Right shot
set_window_value(atk, 3, AG_WINDOW_LENGTH, 3);
set_window_value(atk, 3, AG_WINDOW_HSPEED, -7);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
//recoil
set_window_value(atk, 4, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);
//endlag
set_window_value(atk, 5, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, 5, AG_WINDOW_GOTO, 10);

//mostly synced from RIGHT shot
//startup (Left)
set_window_value(atk, 6, AG_WINDOW_LENGTH, get_window_value(atk, 2, AG_WINDOW_LENGTH));
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 6, AG_WINDOW_SFX, get_window_value(atk, 2, AG_WINDOW_SFX));
set_window_value(atk, 6, AG_WINDOW_SFX_FRAME, get_window_value(atk, 2, AG_WINDOW_SFX_FRAME));
//Left shot
set_window_value(atk, 7, AG_WINDOW_LENGTH, get_window_value(atk, 3, AG_WINDOW_LENGTH));
set_window_value(atk, 7, AG_WINDOW_HSPEED, -get_window_value(atk, 3, AG_WINDOW_HSPEED));
set_window_value(atk, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 7, AG_WINDOW_ANIM_FRAME_START, 12);
//recoil
set_window_value(atk, 8, AG_WINDOW_LENGTH, get_window_value(atk, 4, AG_WINDOW_LENGTH));
set_window_value(atk, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 8, AG_WINDOW_ANIM_FRAME_START, 13);
//endlag
set_window_value(atk, 9, AG_WINDOW_LENGTH, get_window_value(atk, 5, AG_WINDOW_LENGTH));
set_window_value(atk, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, 9, AG_WINDOW_ANIM_FRAME_START, 15);

//common endlag
set_window_value(atk, 10, AG_WINDOW_LENGTH, 4);
set_window_value(atk, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 10, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(atk, 4);

for (var i = 1; i <= 2; i++)
{
    var flip = (i == 2);
    var wdw = flip ? 7 : 3;
    //burst
    set_hitbox_value(atk, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, i, HG_WINDOW, wdw);
    set_hitbox_value(atk, i, HG_LIFETIME, 3);
    set_hitbox_value(atk, i, HG_HITBOX_X, (flip ? -1 : 1) * 36);
    set_hitbox_value(atk, i, HG_HITBOX_Y, -30);
    set_hitbox_value(atk, i, HG_WIDTH, 40);
    set_hitbox_value(atk, i, HG_HEIGHT, 40);
    set_hitbox_value(atk, i, HG_PRIORITY, 2);
    set_hitbox_value(atk, i, HG_DAMAGE, 6);
    set_hitbox_value(atk, i, HG_ANGLE, flip ? 130 : 50);
    set_hitbox_value(atk, i, HG_EFFECT, 1);
    set_hitbox_value(atk, i, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(atk, i, HG_KNOCKBACK_SCALING, .65);
    set_hitbox_value(atk, i, HG_UNOWN_DAMAGE_BONUS, 4);
    set_hitbox_value(atk, i, HG_UNOWN_KNOCKBACK_BONUS, 1);
    set_hitbox_value(atk, i, HG_UNOWN_SCALING_BONUS, 0.10);
    set_hitbox_value(atk, i, HG_BASE_HITPAUSE, 8);
    set_hitbox_value(atk, i, HG_HITPAUSE_SCALING, .35);
    set_hitbox_value(atk, i, HG_HIT_LOCKOUT, 8);
    set_hitbox_value(atk, i, HG_HIT_SFX, asset_get("sfx_ori_grenade_hit_ground"));
    set_hitbox_value(atk, i, HG_VISUAL_EFFECT, 3);
    
    //projectile
    //See hitbox_init: left fireball needs a spr_dir flip
    set_hitbox_value(atk, i+2, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, i+2, HG_WINDOW, wdw);
    set_hitbox_value(atk, i+2, HG_LIFETIME, 50);
    set_hitbox_value(atk, i+2, HG_HITBOX_X, (flip ? -1 : 1) * 32);
    set_hitbox_value(atk, i+2, HG_HITBOX_Y, -28);
    set_hitbox_value(atk, i+2, HG_WIDTH, 20);
    set_hitbox_value(atk, i+2, HG_HEIGHT, 12);
    set_hitbox_value(atk, i+2, HG_SHAPE, 1);
    set_hitbox_value(atk, i+2, HG_PRIORITY, 3);
    set_hitbox_value(atk, i+2, HG_DAMAGE, 2);
    set_hitbox_value(atk, i+2, HG_ANGLE, 50);
    set_hitbox_value(atk, i+2, HG_EFFECT, 1);
    set_hitbox_value(atk, i+2, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(atk, i+2, HG_KNOCKBACK_SCALING, .10);
    set_hitbox_value(atk, i+2, HG_UNOWN_DAMAGE_BONUS, 2);
    set_hitbox_value(atk, i+2, HG_UNOWN_KNOCKBACK_BONUS, 1);
    set_hitbox_value(atk, i+2, HG_UNOWN_SCALING_BONUS, 0.20);
    set_hitbox_value(atk, i+2, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(atk, i+2, HG_HITSTUN_MULTIPLIER, .5);
    set_hitbox_value(atk, i+2, HG_HIT_SFX, asset_get("sfx_burnapplied"));
    set_hitbox_value(atk, i+2, HG_VISUAL_EFFECT, 3);
    
    set_hitbox_value(atk, i+2, HG_PROJECTILE_SPRITE, asset_get("zet_proj_spr"));
    set_hitbox_value(atk, i+2, HG_PROJECTILE_ANIM_SPEED, 0.25);
    set_hitbox_value(atk, i+2, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, i+2, HG_PROJECTILE_HSPEED, 7);
    set_hitbox_value(atk, i+2, HG_PROJECTILE_AIR_FRICTION, 0);
    set_hitbox_value(atk, i+2, HG_PROJECTILE_GROUND_FRICTION, 0);
}

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.F, 3, AG_UNOWN_WINDOW_ACTIVE, true);
set_window_value(UNOWN_ATK.F, 7, AG_UNOWN_WINDOW_ACTIVE, true);
if ("f" not in unown_dictionary) unown_dictionary.f = make_trie_F();
//================================================================
//contains words starting with F
#define make_trie_F()
    return {a:{_:1,b:{l:{e:{_:1,d:{_:1}}},r:{i:{c:{_:1,a:{t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1}}}}}}}},u:{l:{o:{u:{s:{_:1,l:{y:{_:1}}}}}}}},c:{e:{_:1,d:{_:1,o:{w:{n:{_:1}}}},l:{e:{s:{s:{_:1}}}},s:{_:1},t:{_:1,i:{o:{u:{s:{_:1}}}},s:{_:1}}},i:{a:{l:{_:1,s:{_:1}}},l:{i:{t:{a:{t:{e:{_:1,d:{_:1}}}},i:{e:{s:{_:1}}},y:{_:1}}}},n:{g:{_:1}}},t:{_:1,i:{o:{n:{s:{_:1}}}},o:{i:{d:{_:1}},r:{_:1,i:{e:{s:{_:1}},n:{g:{_:1}}},s:{_:1},y:{_:1}}},s:{_:1},u:{a:{l:{_:1}}}},u:{l:{t:{i:{e:{s:{_:1}}},y:{_:1}}}}},d:{_:1,e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},i:{l:{_:1,e:{d:{_:1}},i:{n:{g:{_:1,s:{_:1}}}},s:{_:1},u:{r:{e:{_:1,s:{_:1}}}}},n:{t:{_:1,e:{d:{_:1},r:{_:1},s:{t:{_:1}}},i:{n:{g:{_:1}}}}},r:{_:1,e:{r:{_:1},s:{t:{_:1}}},g:{r:{o:{u:{n:{d:{s:{_:1}}}}}}},i:{e:{s:{_:1}}},l:{y:{_:1}},n:{e:{s:{s:{_:1}}}},w:{a:{y:{_:1}}},y:{_:1}},t:{h:{_:1,f:{u:{l:{_:1,n:{e:{s:{s:{_:1}}}}}}},l:{e:{s:{s:{_:1}}}}}}},j:{i:{t:{a:{_:1}}}},k:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}},l:{a:{f:{e:{l:{_:1}}}},c:{o:{n:{_:1}}},l:{_:1,a:{c:{y:{_:1}}},b:{a:{c:{k:{_:1}}}},e:{n:{_:1}},i:{b:{l:{e:{_:1}}},n:{g:{_:1}}},o:{u:{t:{_:1}},w:{_:1}},s:{_:1}},s:{e:{_:1,l:{y:{_:1}}},i:{f:{y:{_:1}}}},t:{e:{r:{e:{d:{_:1}}}}},i:{n:{k:{s:{_:1}}}}},m:{e:{_:1,d:{_:1}},i:{l:{i:{a:{l:{_:1},r:{_:1,i:{z:{e:{_:1}}},s:{_:1}}},e:{s:{_:1}}},y:{_:1}},n:{e:{_:1}},s:{h:{e:{d:{_:1}}}}},o:{u:{s:{_:1,l:{y:{_:1}}}}}},n:{_:1,a:{t:{i:{c:{_:1,i:{s:{m:{_:1}}},s:{_:1}}}}},c:{i:{e:{d:{_:1}},f:{u:{l:{_:1}}}},y:{_:1}},f:{a:{r:{e:{_:1}}}},g:{_:1,s:{_:1}},n:{i:{n:{g:{_:1}}},y:{_:1}},s:{_:1},t:{a:{b:{u:{l:{o:{u:{s:{_:1}}}}}},s:{i:{e:{s:{_:1}},z:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},t:{i:{c:{_:1,a:{l:{l:{y:{_:1}}}}}}},y:{_:1,l:{a:{n:{d:{_:1}}}}}}}}},r:{_:1,a:{w:{a:{y:{_:1}}}},c:{e:{_:1}},e:{_:1,d:{_:1},w:{e:{l:{l:{_:1,s:{_:1}}}}}},i:{n:{a:{_:1}}},m:{_:1,e:{r:{_:1,s:{_:1}}},h:{o:{u:{s:{e:{_:1}}}}},l:{a:{n:{d:{_:1}}}},s:{_:1}},r:{o:{w:{_:1}}},t:{_:1,e:{d:{_:1}},h:{e:{r:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}},f:{e:{t:{c:{h:{d:{_:1}}}}}}},s:{c:{i:{n:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}},s:{m:{_:1},t:{_:1}}}},h:{i:{o:{n:{_:1,a:{b:{l:{y:{_:1}}}},e:{d:{_:1}},s:{_:1}}}}},t:{_:1,b:{a:{l:{l:{_:1}}}},e:{n:{_:1,e:{d:{_:1}}},r:{_:1},s:{t:{_:1}}},i:{n:{g:{_:1}}}}},t:{_:1,a:{l:{_:1,i:{t:{i:{e:{s:{_:1}}},y:{_:1}}}}},e:{_:1,s:{_:1}},h:{e:{r:{_:1,e:{d:{_:1}},h:{o:{o:{d:{_:1}}}},i:{n:{g:{_:1}}},l:{y:{_:1}},s:{_:1}}},o:{m:{_:1}}},i:{g:{u:{e:{_:1,s:{_:1}}}}},s:{o:{_:1}},t:{e:{n:{_:1,i:{n:{g:{_:1}}}},s:{t:{_:1}}},y:{_:1}}},u:{c:{e:{t:{_:1,s:{_:1}}}},l:{t:{_:1,s:{_:1},y:{_:1}}},n:{_:1,a:{_:1}},x:{_:1}},v:{e:{_:1},o:{r:{_:1,a:{b:{l:{e:{_:1},y:{_:1}}}},e:{d:{_:1}},i:{t:{e:{_:1,s:{_:1}},i:{s:{m:{_:1}}}}},s:{_:1}},u:{r:{_:1,s:{_:1}}}}},w:{n:{i:{n:{g:{_:1}}}}},x:{_:1,e:{d:{_:1},s:{_:1}}},y:{_:1}},e:{a:{r:{_:1,e:{d:{_:1}},f:{u:{l:{_:1}}},i:{n:{g:{_:1}}},l:{e:{s:{s:{_:1}}}},s:{_:1,o:{m:{e:{_:1}}}},o:{w:{_:1}}},s:{i:{b:{l:{e:{_:1}}}},t:{_:1,i:{n:{g:{_:1}}}}},t:{_:1,h:{e:{r:{_:1,i:{n:{g:{_:1}}},s:{_:1}}}},s:{_:1},u:{r:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}}},c:{e:{s:{_:1}},k:{l:{e:{s:{s:{_:1}}}}}},d:{_:1,e:{r:{a:{l:{_:1},t:{i:{o:{n:{_:1}}}}}}},o:{r:{a:{_:1}}},s:{_:1}},e:{_:1,b:{l:{e:{_:1}},a:{s:{_:1}}},d:{_:1,b:{a:{c:{k:{_:1}}}},e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},l:{_:1,e:{r:{s:{_:1}}},i:{n:{g:{_:1,s:{_:1}}}},s:{_:1}},s:{_:1},t:{_:1}},i:{g:{n:{_:1}},s:{t:{y:{_:1}}}},l:{i:{c:{i:{t:{y:{_:1}}}},n:{e:{_:1}}},l:{_:1,a:{_:1,h:{_:1,s:{_:1}},s:{_:1},t:{i:{o:{_:1}}}},e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},o:{w:{_:1,s:{_:1,h:{i:{p:{_:1}}}}}}},o:{n:{_:1,i:{e:{s:{_:1}},o:{u:{s:{_:1}}}},s:{_:1},y:{_:1}}},t:{_:1}},m:{a:{l:{e:{_:1,s:{_:1}}}},i:{n:{i:{n:{e:{_:1}},s:{t:{_:1,s:{_:1}}}}}},m:{e:{_:1,s:{_:1}}},u:{r:{_:1}}},n:{_:1,c:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}},d:{_:1,e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}},n:{e:{k:{i:{n:{_:1}}}}}},r:{_:1,m:{e:{n:{t:{_:1}}}},n:{_:1},r:{e:{t:{_:1,s:{_:1}}},y:{_:1},o:{s:{e:{e:{d:{_:1}}}},t:{h:{o:{r:{n:{_:1}}}}}}},t:{i:{l:{e:{_:1},i:{t:{y:{_:1}},z:{a:{t:{i:{o:{n:{_:1}}}}},e:{_:1,r:{_:1}}}}}}},v:{e:{n:{t:{_:1}}},o:{r:{_:1}}},a:{l:{i:{g:{a:{t:{r:{_:1}}}}}}}},s:{s:{_:1},t:{e:{r:{_:1,i:{n:{g:{_:1}}}}},i:{v:{a:{l:{_:1,s:{_:1}}},e:{_:1},i:{t:{i:{e:{s:{_:1}}}}}}}}},t:{a:{_:1,l:{_:1}},c:{h:{_:1,e:{d:{_:1}}}},i:{s:{h:{_:1}}},u:{s:{_:1,e:{s:{_:1}}}}},u:{d:{_:1,a:{l:{_:1}},s:{_:1}}},v:{e:{r:{_:1,i:{s:{h:{_:1}}}}}},w:{_:1,e:{r:{_:1}}},y:{_:1},z:{_:1}},i:{a:{n:{c:{e:{_:1,e:{_:1}}}},s:{c:{o:{_:1}}}},b:{_:1,b:{e:{r:{_:1}},i:{n:{g:{_:1}}}},e:{r:{_:1,g:{l:{a:{s:{s:{_:1}}}}},s:{_:1}}},r:{e:{_:1},o:{s:{i:{s:{_:1}}}}}},c:{k:{l:{e:{_:1}}},t:{i:{o:{n:{_:1,a:{l:{_:1}}}}}},u:{s:{_:1}}},d:{d:{l:{e:{_:1,r:{_:1}},i:{n:{g:{_:1}}}}},e:{l:{i:{t:{y:{_:1}}}}},o:{_:1}},e:{f:{d:{o:{m:{_:1}}}},l:{d:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}},s:{_:1,t:{o:{n:{e:{_:1}}}}}}},n:{d:{_:1,i:{s:{h:{_:1}}},s:{_:1}}},r:{c:{e:{_:1,s:{t:{_:1}}}},y:{_:1}},s:{t:{a:{_:1}}}},f:{e:{_:1},t:{e:{e:{n:{_:1,t:{h:{_:1}}}}},h:{_:1,s:{_:1}},i:{e:{s:{_:1},t:{h:{_:1}}}},y:{_:1}}},g:{_:1,h:{t:{_:1,e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}}},m:{e:{n:{t:{_:1}}}},u:{r:{a:{t:{i:{v:{e:{_:1,l:{y:{_:1}}}}}}},e:{_:1,d:{_:1},h:{e:{a:{d:{_:1}}}},s:{_:1}},i:{n:{e:{s:{_:1}},g:{_:1}}}}}},l:{e:{_:1,d:{_:1},s:{_:1},t:{_:1}},i:{b:{u:{s:{t:{e:{r:{_:1}}}}}},n:{g:{_:1}}},l:{_:1,e:{d:{_:1},r:{_:1},t:{s:{_:1}}},i:{n:{g:{_:1,s:{_:1}}}},s:{_:1},y:{_:1}},m:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},m:{a:{k:{e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}}}},s:{_:1}},t:{e:{r:{_:1,e:{d:{_:1}},s:{_:1}}},h:{_:1,y:{_:1}},r:{a:{t:{i:{o:{n:{_:1}}}}}}}},n:{_:1,a:{g:{l:{e:{_:1}}},l:{_:1,e:{_:1},i:{s:{t:{_:1,s:{_:1}}},t:{y:{_:1}},z:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},l:{y:{_:1}},s:{_:1}},n:{c:{e:{_:1,d:{_:1},s:{_:1}},i:{a:{l:{_:1,l:{y:{_:1}}}},n:{g:{_:1}}}}}},c:{h:{_:1}},d:{_:1,e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1,s:{_:1}}}},s:{_:1}},e:{_:1,d:{_:1},r:{_:1},s:{_:1,s:{e:{_:1,d:{_:1}}},t:{_:1}}},g:{e:{r:{_:1,e:{d:{_:1}},n:{a:{i:{l:{_:1,s:{_:1}}}}},p:{r:{i:{n:{t:{_:1,s:{_:1}}}}}},s:{_:1},t:{i:{p:{s:{_:1}}}}}}},i:{s:{h:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},k:{_:1},s:{_:1},n:{e:{o:{n:{_:1}}}}},r:{_:1,e:{_:1,a:{r:{m:{s:{_:1}}}},b:{a:{l:{l:{_:1,s:{_:1}}}},i:{r:{d:{_:1}}},u:{g:{_:1}}},c:{r:{a:{c:{k:{e:{r:{_:1,s:{_:1}}}}}}}},d:{_:1},f:{i:{g:{h:{t:{_:1,e:{r:{s:{_:1}}}}}}},l:{i:{e:{s:{_:1}}}}},h:{o:{u:{s:{e:{_:1}}}}},l:{i:{g:{h:{t:{_:1}}}}},m:{a:{n:{_:1}},e:{n:{_:1}}},p:{l:{a:{c:{e:{_:1,s:{_:1}}}}},o:{w:{e:{r:{_:1}}}},r:{o:{o:{f:{_:1}}}}},s:{_:1,t:{o:{r:{m:{_:1}}}}},w:{a:{t:{e:{r:{_:1}}}},o:{o:{d:{_:1}},r:{k:{s:{_:1}}}}}},i:{n:{g:{_:1}}},m:{_:1,e:{r:{_:1}},l:{y:{_:1}},s:{_:1}},s:{_:1,t:{_:1,b:{o:{r:{n:{_:1}}}},h:{a:{n:{d:{_:1}}}},l:{y:{_:1}}}}},s:{h:{_:1,e:{d:{_:1},r:{_:1,m:{a:{n:{_:1}},e:{n:{_:1}}}},s:{_:1}},i:{n:{g:{_:1}}},n:{e:{t:{_:1}}},y:{_:1}},s:{i:{o:{n:{_:1}}}},t:{_:1,e:{d:{_:1}},f:{i:{g:{h:{t:{_:1}}}},u:{l:{_:1}}},s:{_:1}}},t:{_:1,c:{h:{_:1}},n:{e:{s:{s:{_:1}}}},s:{_:1},t:{e:{d:{_:1},r:{_:1},s:{t:{_:1}}},i:{n:{g:{_:1,s:{_:1}}}}}},v:{e:{_:1,r:{_:1},s:{_:1}}},x:{_:1,a:{b:{l:{e:{_:1}}},t:{e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}},e:{d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1,s:{_:1}}}},t:{u:{r:{e:{_:1,s:{_:1}}}}}},z:{z:{_:1,l:{e:{_:1,d:{_:1}}}}}},l:{a:{c:{k:{_:1}},g:{_:1,g:{e:{d:{_:1}},i:{n:{g:{_:1}}}},s:{_:1,h:{i:{p:{_:1}}}}},i:{l:{_:1,i:{n:{g:{_:1}}}},r:{_:1}},k:{_:1,e:{_:1,d:{_:1},s:{_:1}},y:{_:1}},m:{e:{_:1,n:{c:{o:{_:1}}},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}},m:{a:{b:{l:{e:{_:1}}}}}},n:{_:1,k:{_:1,i:{n:{g:{_:1}}},s:{_:1}},n:{e:{l:{_:1}}}},p:{_:1,j:{a:{c:{k:{s:{_:1}}}}},p:{e:{d:{_:1}},i:{n:{g:{_:1}}},l:{e:{_:1}}},s:{_:1}},r:{e:{_:1,d:{_:1},s:{_:1},o:{n:{_:1}}},i:{n:{g:{_:1}}}},s:{h:{_:1,b:{a:{c:{k:{_:1,s:{_:1}}}}},e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},l:{i:{g:{h:{t:{_:1,s:{_:1}}}}}},y:{_:1}},k:{_:1}},t:{_:1,b:{e:{d:{_:1}}},s:{_:1},t:{e:{n:{e:{d:{_:1}}},r:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}}}},u:{l:{e:{n:{c:{e:{_:1}}}}}},w:{a:{r:{e:{_:1}}}}},u:{n:{t:{_:1,i:{n:{g:{_:1}}}}}},v:{o:{r:{_:1,e:{d:{_:1}},s:{_:1}},u:{r:{_:1,s:{_:1}}}}},w:{_:1,e:{d:{_:1}},l:{e:{s:{s:{_:1,l:{y:{_:1}}}}}},s:{_:1}},y:{_:1,e:{d:{_:1}}},a:{f:{f:{y:{_:1}}}},b:{e:{b:{e:{_:1}}}}},e:{a:{_:1,b:{a:{g:{_:1}}},s:{_:1}},c:{k:{s:{_:1}}},d:{_:1,g:{e:{d:{_:1}},l:{i:{n:{g:{_:1}}}}}},e:{_:1,c:{e:{_:1}},i:{n:{g:{_:1}}},t:{_:1,i:{n:{g:{_:1}}}}},s:{h:{_:1,y:{_:1}}},t:{c:{h:{e:{r:{_:1}},l:{i:{n:{g:{_:1}}}},i:{n:{d:{e:{r:{_:1}}}}}}}},w:{_:1},x:{_:1,i:{b:{i:{l:{i:{t:{y:{_:1}}}}},l:{e:{_:1}}},n:{g:{_:1}}}}},i:{c:{k:{_:1,e:{d:{_:1},r:{_:1,i:{n:{g:{_:1}}}}},i:{n:{g:{_:1}}},s:{_:1}}},e:{r:{_:1,s:{_:1}},s:{_:1}},g:{h:{t:{_:1,s:{_:1},y:{_:1}}}},m:{s:{y:{_:1}}},n:{c:{h:{_:1,i:{n:{g:{_:1}}}}},g:{_:1,i:{n:{g:{_:1}}}},t:{_:1}},p:{_:1,p:{e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}},s:{_:1}},r:{t:{_:1,a:{t:{i:{o:{u:{s:{_:1}}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}}}}},o:{a:{t:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1},z:{e:{l:{_:1}}}}},c:{k:{_:1}},e:{_:1,t:{t:{e:{_:1}}}},g:{_:1,g:{e:{d:{_:1}},i:{n:{g:{_:1}}}}},o:{d:{_:1,e:{d:{_:1}},g:{a:{t:{e:{s:{_:1}}}}},i:{n:{g:{_:1}}},s:{_:1}},r:{_:1,b:{o:{a:{r:{d:{_:1,s:{_:1}}}}}},e:{d:{_:1}},s:{_:1}},z:{y:{_:1}}},p:{_:1,p:{e:{d:{_:1}},i:{n:{g:{_:1}}},y:{_:1}},s:{_:1}},r:{a:{_:1,l:{_:1}},e:{n:{c:{e:{_:1}}}},i:{n:{_:1},s:{t:{_:1,s:{_:1}}}},g:{e:{s:{_:1}}}},s:{s:{_:1,i:{n:{g:{_:1}}}}},t:{a:{t:{i:{o:{n:{_:1}}}}}},u:{n:{d:{e:{r:{_:1,i:{n:{g:{_:1}}}}}}},r:{_:1,i:{s:{h:{e:{d:{_:1}}}}}}},w:{_:1,e:{r:{_:1,i:{n:{g:{_:1}}},s:{_:1}}},i:{n:{g:{_:1}}},n:{_:1},s:{_:1}}},u:{_:1,e:{_:1},f:{f:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},y:{_:1}}},i:{d:{_:1,s:{_:1}}},k:{e:{_:1}},n:{g:{_:1},k:{_:1,e:{d:{_:1}},i:{e:{s:{_:1}},n:{g:{_:1}}},y:{_:1}}},o:{r:{e:{s:{c:{e:{n:{t:{_:1}}}}}}}},r:{r:{i:{e:{s:{_:1}}},y:{_:1}}},s:{h:{_:1,e:{d:{_:1}}},t:{e:{r:{e:{d:{_:1}}}}}},t:{e:{_:1,s:{_:1}},t:{e:{r:{i:{n:{g:{_:1}}}}}}},x:{_:1}},y:{_:1,b:{o:{y:{_:1}}},e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},g:{o:{n:{_:1}}}}},o:{a:{l:{_:1},m:{_:1,i:{n:{g:{_:1}}},y:{_:1}}},b:{_:1},c:{a:{l:{_:1}},u:{s:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},s:{e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},d:{d:{e:{r:{_:1}}}},e:{_:1},g:{_:1,g:{e:{d:{_:1}},i:{e:{s:{t:{_:1}}}}}},i:{b:{l:{e:{s:{_:1}}}},l:{_:1,e:{d:{_:1}}},s:{t:{i:{n:{g:{_:1}}}}}},l:{d:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},i:{a:{g:{e:{_:1}}}},k:{_:1,l:{o:{r:{e:{_:1}}}},s:{_:1,y:{_:1}}},l:{i:{c:{l:{e:{_:1}}}},o:{w:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}}},y:{_:1}}},n:{d:{_:1,e:{r:{_:1},s:{t:{_:1}}},l:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}},u:{e:{_:1}}},t:{_:1}},o:{d:{_:1,s:{_:1}},l:{_:1,e:{d:{_:1}},h:{a:{r:{d:{y:{_:1}}}}},i:{n:{g:{_:1}},s:{h:{_:1,n:{e:{s:{s:{_:1}}}}}}},p:{r:{o:{o:{f:{_:1}}}}},s:{_:1}},t:{_:1,a:{g:{e:{_:1}}},b:{a:{l:{l:{_:1}}}},e:{d:{_:1},r:{_:1}},h:{o:{l:{d:{_:1}}}},i:{n:{g:{_:1}}},m:{a:{n:{_:1}}},n:{o:{t:{e:{_:1,s:{_:1}}}}},p:{r:{i:{n:{t:{s:{_:1}}}}}},s:{i:{e:{s:{_:1}}},t:{e:{p:{s:{_:1}}},o:{o:{l:{_:1}}}}},w:{e:{a:{r:{_:1}}},o:{r:{k:{_:1}}}}},n:{g:{u:{s:{_:1}}}}},p:{_:1},r:{_:1,a:{g:{e:{_:1},i:{n:{g:{_:1}}}},y:{_:1}},b:{a:{d:{e:{_:1}}},i:{d:{_:1,d:{e:{n:{_:1}},i:{n:{g:{_:1}}}},s:{_:1}}}},c:{e:{_:1,d:{_:1},f:{u:{l:{_:1}}},p:{s:{_:1}},s:{_:1}},i:{b:{l:{y:{_:1}}},n:{g:{_:1}}}},d:{_:1},e:{_:1,a:{r:{m:{_:1}}},c:{l:{o:{s:{e:{d:{_:1}},u:{r:{e:{_:1}}}}}}},f:{a:{t:{h:{e:{r:{s:{_:1}}}}}}},g:{o:{_:1,n:{e:{_:1}}}},h:{e:{a:{d:{_:1}}}},i:{g:{n:{_:1,e:{r:{s:{_:1}}}}}},m:{a:{n:{_:1}},o:{s:{t:{_:1}}}},n:{s:{i:{c:{_:1,s:{_:1}}}}},p:{l:{a:{y:{_:1}}}},s:{a:{w:{_:1}},e:{e:{_:1,a:{b:{l:{e:{_:1}}}}}},i:{g:{h:{t:{_:1}}}},k:{i:{n:{_:1}}},t:{_:1,e:{r:{_:1}},r:{y:{_:1}},s:{_:1}}},t:{h:{o:{u:{g:{h:{t:{_:1}}}}}},o:{l:{d:{_:1}}}},v:{e:{r:{_:1}}},w:{o:{r:{d:{_:1}}}}},f:{e:{i:{t:{_:1,e:{d:{_:1}},s:{_:1}}}}},g:{a:{v:{e:{_:1}}},e:{_:1,d:{_:1},r:{_:1,i:{e:{s:{_:1}}},y:{_:1}},t:{_:1,f:{u:{l:{_:1}}},s:{_:1},t:{a:{b:{l:{e:{_:1}}}},i:{n:{g:{_:1}}}}}},i:{n:{g:{_:1}},v:{e:{_:1,n:{_:1,e:{s:{s:{_:1}}}},s:{_:1}},i:{n:{g:{_:1}}}}},o:{_:1,t:{_:1,t:{e:{n:{_:1}}}}}},k:{_:1,e:{d:{_:1}},l:{i:{f:{t:{_:1}}}},s:{_:1}},m:{_:1,a:{l:{_:1,d:{e:{h:{y:{d:{e:{_:1}}}}}},i:{t:{y:{_:1}}},l:{y:{_:1}}},t:{_:1,i:{o:{n:{_:1,s:{_:1}}}}}},e:{d:{_:1},r:{_:1,l:{y:{_:1}}}},i:{d:{a:{b:{l:{e:{_:1}}}}},n:{g:{_:1}}},s:{_:1},u:{l:{a:{_:1,s:{_:1},t:{e:{_:1},i:{n:{g:{_:1}}}}}}}},n:{i:{c:{a:{t:{i:{n:{g:{_:1}},o:{n:{_:1}}}}}}}},s:{a:{k:{e:{_:1,n:{_:1}},i:{n:{g:{_:1}}}}}},t:{_:1,e:{_:1},h:{_:1,c:{o:{m:{i:{n:{g:{_:1}}}}}},r:{i:{g:{h:{t:{_:1}}}}},w:{i:{t:{h:{_:1}}}}},i:{e:{s:{_:1},t:{h:{_:1}}},f:{i:{e:{d:{_:1}}}},t:{u:{d:{e:{_:1}}}}},n:{i:{g:{h:{t:{_:1}}}}},r:{e:{s:{s:{_:1}}}},u:{i:{t:{o:{u:{s:{_:1}}}}},n:{a:{t:{e:{_:1,l:{y:{_:1}}}}},e:{_:1,s:{_:1},t:{e:{l:{l:{e:{r:{_:1}}}}}}}}},y:{_:1}},u:{m:{_:1}},w:{a:{r:{d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},r:{e:{t:{r:{e:{s:{s:{_:1}}}}}}}},s:{s:{e:{_:1},i:{l:{_:1,i:{z:{e:{d:{_:1}}}}}}},t:{e:{r:{_:1,e:{d:{_:1}}}}}},u:{g:{h:{t:{_:1}}},l:{_:1,e:{d:{_:1}}},n:{d:{_:1,a:{t:{i:{o:{n:{_:1,s:{_:1}}}}}},e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}}},t:{a:{i:{n:{_:1,h:{e:{a:{d:{_:1}}}},s:{_:1}}}}}},r:{_:1,s:{_:1,o:{m:{e:{_:1}}}},t:{e:{e:{n:{_:1,t:{h:{_:1}}}}},h:{_:1}}}},w:{l:{_:1,e:{r:{_:1}}}},x:{_:1,e:{s:{_:1}},h:{o:{l:{e:{_:1,s:{_:1}}}}},y:{_:1}},y:{e:{r:{_:1}}},m:{a:{n:{t:{i:{s:{_:1}}}}}}},r:{a:{c:{t:{i:{o:{n:{_:1,s:{_:1}}}},u:{r:{e:{_:1,d:{_:1},s:{_:1}}}}}},g:{i:{l:{e:{_:1}}},m:{e:{n:{t:{_:1,s:{_:1}}}}},r:{a:{n:{c:{e:{_:1}}}}}},i:{l:{_:1,t:{y:{_:1}}}},m:{e:{_:1,d:{_:1},r:{s:{_:1}},s:{_:1},w:{o:{r:{k:{_:1}}}}},i:{n:{g:{_:1}}}},n:{c:{_:1,h:{i:{s:{e:{_:1,s:{_:1}}}}},s:{_:1}},k:{_:1,f:{u:{r:{t:{e:{r:{_:1}}}}}},l:{i:{n:{_:1}},y:{_:1}},s:{_:1}},t:{i:{c:{_:1,a:{l:{l:{y:{_:1}}}}}}}},t:{_:1,e:{r:{n:{a:{l:{_:1}},i:{t:{i:{e:{s:{_:1}}},y:{_:1}},z:{a:{t:{i:{o:{n:{_:1}}}}},i:{n:{g:{_:1}}}}}}}}},u:{d:{_:1,s:{_:1}},g:{h:{t:{_:1}}},l:{e:{i:{n:{_:1}}}}},y:{_:1,e:{d:{_:1}}},z:{z:{l:{e:{d:{_:1}}}}},x:{u:{r:{e:{_:1}}}}},e:{a:{k:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},s:{h:{_:1}}},s:{_:1},y:{_:1}}},c:{k:{l:{e:{_:1},i:{n:{g:{_:1}}}}}},e:{_:1,b:{i:{e:{_:1}}},d:{_:1,m:{a:{n:{_:1}}},o:{m:{_:1,s:{_:1}}}},i:{n:{g:{_:1}}},l:{a:{n:{c:{e:{_:1,r:{_:1}},i:{n:{g:{_:1}}}}}},o:{a:{d:{e:{r:{_:1}},i:{n:{g:{_:1}}}}}},y:{_:1}},m:{a:{n:{_:1}}},r:{_:1},s:{_:1},w:{a:{y:{_:1,s:{_:1}}}},z:{e:{_:1,r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}}},i:{g:{h:{t:{_:1,e:{r:{_:1}}}}}},n:{c:{h:{_:1}},z:{y:{_:1}}},q:{u:{e:{n:{c:{i:{e:{s:{_:1}}},y:{_:1}},t:{_:1,l:{y:{_:1}}}}}}},s:{h:{_:1,e:{n:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}}},r:{_:1},s:{t:{_:1}}},l:{y:{_:1}},m:{a:{n:{_:1}},e:{n:{_:1}}},n:{e:{s:{s:{_:1}}}},w:{a:{t:{e:{r:{_:1}}}}}}},t:{_:1,t:{i:{n:{g:{_:1}}}}}},i:{c:{t:{i:{o:{n:{_:1}}}}},d:{g:{e:{_:1}}},e:{d:{_:1},n:{d:{_:1,l:{e:{s:{s:{_:1}}},i:{e:{r:{_:1},s:{t:{_:1}}}},y:{_:1}},s:{_:1,h:{i:{p:{_:1,s:{_:1}}}}}}},s:{_:1}},g:{a:{t:{e:{_:1}}},g:{i:{n:{g:{_:1}}}},h:{t:{_:1,e:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},f:{u:{l:{_:1,l:{y:{_:1}}}}}}},i:{d:{_:1}}},l:{l:{s:{_:1},i:{s:{h:{_:1}}}}},n:{g:{e:{_:1,s:{_:1}}}},s:{k:{_:1,y:{_:1}}},t:{t:{e:{r:{_:1,s:{_:1}}}},z:{_:1}},v:{o:{l:{o:{u:{s:{_:1}}}}}},z:{z:{y:{_:1}}}},o:{_:1,g:{_:1,s:{_:1},a:{d:{i:{e:{r:{_:1}}}}}},l:{i:{c:{_:1}}},m:{_:1},n:{t:{_:1,a:{l:{_:1}},i:{e:{r:{_:1,s:{_:1}}},n:{g:{_:1}}},s:{_:1}}},s:{t:{_:1,b:{i:{t:{e:{_:1}}}},i:{n:{g:{_:1}}},y:{_:1}},l:{a:{s:{s:{_:1}}}},m:{o:{t:{h:{_:1}}}}},u:{f:{r:{o:{u:{_:1}}}}},w:{n:{_:1}},z:{e:{_:1,n:{_:1}}},a:{k:{i:{e:{_:1}}}}},u:{g:{a:{l:{_:1}}},i:{t:{_:1,c:{a:{k:{e:{_:1}}}},f:{u:{l:{_:1}}},i:{o:{n:{_:1}}},l:{e:{s:{s:{_:1}}}},s:{_:1},y:{_:1}}},s:{t:{r:{a:{t:{e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}}}},y:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}}}},u:{c:{h:{s:{i:{a:{_:1}}}}},d:{g:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}},e:{l:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},g:{i:{t:{i:{v:{e:{_:1,s:{_:1}}}}}},u:{_:1,e:{_:1}}},h:{r:{e:{r:{_:1}}}},l:{c:{r:{u:{m:{_:1}}}},f:{i:{l:{_:1,l:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1}}}}}}}},l:{_:1,e:{r:{_:1},s:{t:{_:1}}},y:{_:1}}},m:{b:{l:{e:{_:1},i:{n:{g:{_:1}}}}},e:{s:{_:1}},i:{g:{a:{t:{e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}}},n:{_:1,c:{t:{i:{o:{n:{_:1,a:{l:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}}}},d:{_:1,a:{m:{e:{n:{t:{a:{l:{_:1,i:{s:{t:{_:1}}},l:{y:{_:1}}}}}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},r:{a:{i:{s:{e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}}}}},s:{_:1}},e:{r:{a:{l:{_:1,s:{_:1}}}}},g:{a:{l:{_:1}},i:{_:1},u:{s:{_:1}}},k:{_:1,y:{_:1}},n:{i:{e:{r:{_:1},s:{_:1,t:{_:1}}}},y:{_:1}}},r:{_:1,i:{o:{u:{s:{_:1,l:{y:{_:1}}}}}},l:{o:{n:{g:{_:1}}}},n:{a:{c:{e:{_:1}}},i:{s:{h:{e:{d:{_:1}}}},t:{u:{r:{e:{_:1}}}}}},r:{o:{w:{e:{d:{_:1}}}},y:{_:1},e:{t:{_:1}}},s:{_:1},t:{h:{e:{r:{_:1,i:{n:{g:{_:1}}},m:{o:{r:{e:{_:1}}}}},s:{t:{_:1}}}},i:{v:{e:{_:1}}}},y:{_:1},f:{r:{o:{u:{_:1}}}}},s:{e:{_:1,d:{_:1},s:{_:1}},i:{l:{l:{i:{_:1}}},o:{n:{_:1}}},s:{_:1,i:{n:{g:{_:1}}},y:{_:1}}},t:{i:{l:{e:{_:1},i:{t:{y:{_:1}}}}},o:{n:{_:1}},u:{r:{e:{_:1,s:{_:1}},i:{s:{t:{i:{c:{_:1}}}}}}}},z:{z:{_:1,y:{_:1}}}}};