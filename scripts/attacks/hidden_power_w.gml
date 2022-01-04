var atk = 23;// W
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_W"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_W_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_ice_back_air"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 8);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

//top prong
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 6);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -68);
set_hitbox_value(atk, 1, HG_WIDTH, 10);
set_hitbox_value(atk, 1, HG_HEIGHT, 40);
set_hitbox_value(atk, 1, HG_PRIORITY, 6);
set_hitbox_value(atk, 1, HG_SHAPE, 1);
set_hitbox_value(atk, 1, HG_DAMAGE, 9);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 6);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 1, HG_UNOWN_SCALING_BONUS, 0.15);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, 19);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT_Y_OFFSET, -40);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_abyss_hex_hit"));

//side prongs
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 2);
set_hitbox_value(atk, 2, HG_LIFETIME, 6);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -64);
set_hitbox_value(atk, 2, HG_WIDTH, 96);
set_hitbox_value(atk, 2, HG_HEIGHT, 40);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_SHAPE, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 7);
set_hitbox_value(atk, 2, HG_ANGLE, 60);
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, 2, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(atk, 2, HG_UNOWN_DAMAGE_BONUS, 5);
set_hitbox_value(atk, 2, HG_UNOWN_KNOCKBACK_BONUS, 1);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.W, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("w" not in unown_dictionary) unown_dictionary.w = make_trie_W();
//================================================================
//contains words starting with W
#define make_trie_W()
    return {a:{c:{a:{n:{_:1}},k:{_:1,o:{_:1,s:{_:1}},y:{_:1}}},d:{_:1,d:{l:{e:{_:1}}},e:{_:1},i:{n:{g:{_:1}}}},f:{f:{l:{e:{_:1,s:{_:1}}}}},g:{_:1,e:{_:1,r:{_:1},s:{_:1}},g:{i:{n:{g:{_:1}}}},i:{n:{g:{_:1}}},o:{n:{_:1,s:{_:1}}}},h:{o:{o:{_:1}}},i:{f:{_:1},l:{_:1,i:{n:{g:{_:1}}},m:{e:{r:{_:1}}},o:{r:{d:{_:1}}}},s:{t:{_:1,b:{a:{n:{d:{_:1}}}}}},t:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},r:{e:{s:{s:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}}},s:{_:1}},v:{e:{_:1,d:{_:1},r:{_:1}}}},k:{e:{_:1,n:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},l:{k:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},l:{_:1,a:{_:1,b:{y:{_:1}},c:{e:{_:1}}},e:{d:{_:1},t:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},o:{p:{_:1},w:{_:1,i:{n:{g:{_:1}}}}},p:{a:{p:{e:{r:{_:1}}}}},s:{_:1},y:{_:1}},n:{u:{t:{_:1}}},r:{e:{i:{n:{_:1}}}},t:{z:{_:1,i:{n:{g:{_:1}}}}}},m:{p:{u:{m:{_:1}}}},n:{_:1,d:{_:1,e:{r:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}}}}},g:{l:{e:{r:{_:1}}}},i:{n:{g:{_:1}}},t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},o:{n:{_:1}},s:{_:1}}},r:{_:1,d:{_:1,e:{n:{_:1}},r:{o:{b:{e:{_:1}}}}},e:{_:1,h:{o:{u:{s:{e:{_:1,s:{_:1}}}}}},s:{_:1}},f:{a:{r:{e:{_:1},i:{n:{_:1}}}}},h:{e:{a:{d:{_:1,s:{_:1}}}}},l:{o:{c:{k:{_:1,s:{_:1}}},r:{d:{_:1}}}},m:{_:1,e:{d:{_:1},r:{_:1},s:{t:{_:1}}},i:{n:{g:{_:1}}},s:{_:1},t:{h:{_:1}}},n:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1,s:{_:1}}}}},p:{_:1,a:{t:{h:{_:1}}},e:{d:{_:1}}},r:{a:{n:{t:{_:1,e:{d:{_:1}},s:{_:1}}}},e:{n:{_:1}},i:{n:{g:{_:1}},o:{r:{_:1,s:{_:1}}}}},s:{_:1,a:{w:{_:1}}},t:{_:1,i:{m:{e:{_:1}}},o:{r:{t:{l:{e:{_:1}}}}},s:{_:1}},y:{_:1}},s:{_:1,h:{_:1,c:{l:{o:{t:{h:{_:1}}}}},e:{d:{_:1},r:{_:1},s:{_:1}},i:{n:{g:{_:1}}},o:{u:{t:{_:1}}},r:{o:{o:{m:{_:1,s:{_:1}}}}},y:{_:1}},p:{_:1,s:{_:1}},t:{e:{_:1,b:{a:{s:{k:{e:{t:{_:1}}}}}},d:{_:1},f:{u:{l:{_:1}}},s:{_:1}},i:{n:{g:{_:1}}}}},t:{c:{h:{_:1,e:{d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},f:{u:{l:{_:1}}},i:{n:{g:{_:1}}},m:{a:{n:{_:1}}},o:{g:{_:1}}}},e:{r:{_:1,b:{e:{d:{_:1}}},e:{d:{_:1}},f:{a:{l:{l:{_:1}}},r:{o:{n:{t:{_:1}}}}},i:{n:{g:{_:1}}},l:{o:{o:{_:1}}},m:{e:{l:{o:{n:{_:1}}}}},p:{r:{o:{o:{f:{_:1}}}}},s:{_:1},w:{o:{r:{k:{s:{_:1}}}}},y:{_:1}}},m:{e:{l:{_:1}}},t:{_:1,s:{_:1}}},v:{e:{_:1,d:{_:1},l:{e:{n:{g:{t:{h:{_:1,s:{_:1}}}}}}},r:{e:{d:{_:1}}},s:{_:1}},i:{n:{g:{_:1}}},y:{_:1}},x:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},y:{_:1}},y:{_:1,s:{_:1,i:{d:{e:{_:1}}}},w:{a:{r:{d:{_:1}}}}}},e:{_:1,a:{k:{_:1,e:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}},r:{_:1},s:{t:{_:1}}},l:{i:{n:{g:{_:1}}}},n:{e:{s:{s:{_:1,e:{s:{_:1}}}}}}},l:{t:{h:{_:1,i:{e:{s:{t:{_:1}}}},y:{_:1}}}},n:{_:1,i:{n:{g:{_:1}}}},p:{o:{n:{_:1,s:{_:1}}}},r:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}},s:{_:1},y:{_:1}},s:{e:{l:{_:1,s:{_:1}}}},t:{h:{e:{r:{_:1,e:{d:{_:1}},m:{a:{n:{_:1}}},s:{_:1}}}}},v:{e:{_:1,r:{_:1}},i:{l:{e:{_:1}}}}},b:{_:1,b:{i:{n:{g:{_:1}}}},e:{r:{_:1}},s:{_:1,t:{e:{r:{_:1}}}}},d:{_:1,d:{e:{d:{_:1}},i:{n:{g:{_:1,s:{_:1}}}}},g:{e:{_:1,s:{_:1}},i:{e:{_:1,s:{_:1}}}},l:{o:{c:{k:{_:1}}}},s:{_:1}},e:{_:1,d:{_:1,l:{e:{_:1}},s:{_:1}},k:{_:1,e:{n:{d:{_:1,s:{_:1}}}},l:{y:{_:1}},s:{_:1}},n:{i:{e:{_:1,s:{_:1}}},s:{y:{_:1}},y:{_:1}},p:{_:1,i:{n:{b:{e:{l:{l:{_:1}}}},g:{_:1}}},y:{_:1}},v:{i:{l:{_:1}}},z:{i:{n:{g:{_:1}}}}},i:{g:{h:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1},t:{_:1,e:{d:{_:1}},l:{e:{s:{s:{_:1}}}},s:{_:1}}}},n:{e:{r:{_:1}}},r:{_:1,d:{_:1,e:{r:{_:1},s:{t:{_:1}}},l:{y:{_:1}},n:{e:{s:{s:{_:1}}}},o:{_:1,e:{s:{_:1}},s:{_:1}}}}},l:{c:{h:{_:1},o:{m:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},d:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}}},f:{a:{r:{e:{_:1}}}},l:{_:1,i:{n:{g:{_:1}}},n:{e:{s:{s:{_:1}}}},s:{_:1}},s:{h:{_:1}},t:{_:1,s:{_:1}}},n:{c:{h:{_:1}},t:{_:1}},p:{e:{a:{r:{_:1}}},t:{_:1}},r:{e:{_:1,w:{o:{l:{f:{_:1},v:{e:{s:{_:1}}}}}}}},s:{t:{_:1,b:{o:{u:{n:{d:{_:1}}}}},e:{r:{n:{_:1,s:{_:1}}}},w:{a:{r:{d:{_:1}}}}}},t:{_:1,l:{a:{n:{d:{s:{_:1}}}}},s:{_:1},t:{e:{r:{_:1}},i:{n:{g:{_:1}}}}}},h:{a:{_:1,c:{k:{_:1,e:{d:{_:1}},o:{_:1}}},l:{e:{_:1,s:{_:1}}},m:{_:1,m:{o:{_:1},y:{_:1}}},r:{f:{_:1},v:{e:{s:{_:1}}}},t:{_:1,c:{h:{a:{m:{a:{c:{a:{l:{l:{i:{t:{_:1}}}}}}}}}}},e:{v:{e:{r:{_:1}}}},n:{o:{t:{_:1}}},s:{_:1,o:{e:{v:{e:{r:{_:1}}}}}}}},e:{a:{t:{_:1}},e:{_:1,l:{_:1,c:{h:{a:{i:{r:{_:1,s:{_:1}}}}}},e:{r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},z:{e:{_:1},i:{n:{g:{_:1}}}}},n:{_:1,c:{e:{_:1}},e:{v:{e:{r:{_:1}}}}},r:{e:{_:1,a:{b:{o:{u:{t:{s:{_:1}}}}},s:{_:1}},f:{o:{r:{e:{_:1}}}},i:{n:{_:1}},o:{f:{_:1}},v:{e:{r:{_:1}}}}},t:{_:1,h:{e:{r:{_:1}}}},w:{_:1},y:{_:1}},i:{c:{h:{_:1,e:{v:{e:{r:{_:1}}}}}},f:{f:{_:1}},l:{e:{_:1},s:{t:{_:1}}},m:{_:1,p:{e:{r:{_:1,i:{n:{g:{_:1}}}}}},s:{_:1,i:{c:{a:{l:{_:1}},o:{t:{t:{_:1}}}}},y:{_:1}}},n:{e:{_:1,r:{_:1}},i:{n:{g:{_:1}}},y:{_:1}},p:{_:1,l:{a:{s:{h:{_:1}}}},p:{e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}}}},r:{l:{_:1,i:{n:{g:{_:1}},p:{e:{d:{e:{_:1}}}}},p:{o:{o:{l:{_:1}}}},w:{i:{n:{d:{_:1}}}}}},s:{c:{a:{s:{h:{_:1}}}},k:{_:1,e:{d:{_:1},r:{_:1},y:{_:1}},i:{n:{g:{_:1}}},y:{_:1}},m:{u:{r:{_:1}}},p:{e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},t:{l:{e:{_:1,r:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},t:{_:1,e:{_:1,n:{e:{s:{s:{_:1}}}},r:{_:1},s:{_:1},y:{_:1}},t:{l:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}},z:{_:1}},o:{_:1,a:{_:1},d:{u:{n:{i:{t:{_:1}}}}},e:{v:{e:{r:{_:1}}}},l:{e:{_:1,h:{e:{a:{r:{t:{e:{d:{l:{y:{_:1}}}}}}}}},s:{a:{l:{e:{_:1,r:{_:1}}}},o:{m:{e:{_:1}}}}},l:{y:{_:1}}},m:{_:1,e:{v:{e:{r:{_:1}}}}},o:{p:{_:1,e:{e:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},s:{h:{_:1}}},p:{p:{e:{r:{_:1}},i:{n:{g:{_:1}}}}},s:{e:{_:1}}},y:{_:1,s:{_:1}}},i:{c:{k:{_:1,e:{d:{_:1,n:{e:{s:{s:{_:1}}}}}}}},d:{e:{_:1,n:{_:1,i:{n:{g:{_:1}}}},r:{_:1}},o:{w:{_:1,e:{d:{_:1},r:{_:1}},s:{_:1}}},t:{h:{_:1}}},e:{l:{d:{_:1,i:{n:{g:{_:1}}}}},n:{e:{r:{_:1,s:{_:1}}}}},f:{e:{_:1}},g:{_:1,g:{e:{d:{_:1}},l:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},y:{_:1,t:{u:{f:{f:{_:1}}}}}},y:{_:1}},s:{_:1}},k:{i:{_:1}},l:{d:{_:1,c:{a:{t:{_:1,s:{_:1}}}},e:{r:{_:1,n:{e:{s:{s:{_:1}}}}},s:{t:{_:1}}},f:{i:{r:{e:{_:1}}}},l:{i:{f:{e:{_:1}}},y:{_:1}}},l:{_:1,e:{d:{_:1}},f:{u:{l:{_:1,l:{y:{_:1}}}}},i:{e:{s:{_:1}},n:{g:{_:1,l:{y:{_:1}},n:{e:{s:{s:{_:1}}}}}}},o:{w:{_:1,s:{_:1}}},p:{o:{w:{e:{r:{_:1}}}}},s:{_:1},y:{_:1}},t:{_:1},y:{_:1}},m:{p:{_:1,o:{d:{_:1}},s:{_:1},y:{_:1}}},n:{_:1,c:{h:{_:1}},d:{_:1,b:{a:{g:{_:1}},r:{e:{a:{k:{e:{r:{_:1}}}}}}},e:{d:{_:1}},f:{a:{l:{l:{_:1}}}},i:{n:{g:{_:1}}},j:{a:{m:{m:{e:{r:{_:1}}}}}},m:{i:{l:{l:{s:{_:1}}}}},o:{w:{_:1,s:{_:1,i:{l:{l:{_:1}}}}}},p:{i:{p:{e:{_:1}}}},s:{_:1,h:{i:{e:{l:{d:{_:1}}}}},u:{r:{f:{i:{n:{g:{_:1}}}}}}},w:{a:{r:{d:{_:1}}}},y:{_:1}},e:{_:1,r:{y:{_:1}}},g:{_:1,b:{e:{a:{t:{_:1}}}},e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},m:{a:{n:{_:1}}},s:{_:1},u:{l:{l:{_:1}}}},i:{n:{g:{_:1}}},k:{_:1,i:{n:{g:{_:1}}},l:{e:{_:1}},s:{_:1}},n:{e:{r:{_:1,s:{_:1}}},i:{n:{g:{_:1,s:{_:1}}}}},o:{s:{_:1}},s:{_:1},t:{e:{r:{_:1,s:{_:1}}}}},p:{e:{_:1,d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}},r:{e:{_:1,d:{_:1},l:{e:{s:{s:{_:1}}}},s:{_:1},t:{a:{p:{_:1,s:{_:1}}}}},i:{n:{g:{_:1}}}},s:{d:{o:{m:{_:1}}},e:{_:1,a:{s:{s:{_:1}}},c:{r:{a:{c:{k:{s:{_:1}}}}}},d:{_:1},l:{y:{_:1}},r:{_:1},s:{t:{_:1}}},h:{_:1,e:{d:{_:1},s:{_:1}},f:{u:{l:{_:1}}},i:{n:{g:{_:1}},w:{a:{s:{h:{i:{_:1}}}}}}},p:{_:1}},t:{_:1,c:{h:{_:1,c:{r:{a:{f:{t:{_:1}}}}},e:{s:{_:1}},i:{n:{g:{_:1}}},y:{_:1}}},h:{_:1,d:{r:{a:{w:{_:1,a:{l:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},n:{_:1},s:{_:1}}},e:{w:{_:1}}}},e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},h:{e:{l:{d:{_:1}}},o:{l:{d:{_:1,i:{n:{g:{_:1}}}}}}},i:{n:{_:1}},o:{u:{t:{_:1}}},s:{t:{a:{n:{d:{_:1,i:{n:{g:{_:1}}}}}}}}},l:{e:{s:{s:{_:1}}}},n:{e:{s:{s:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}}},s:{_:1},t:{y:{_:1}}},v:{e:{s:{_:1}}},z:{a:{r:{d:{_:1}}}}},o:{_:1,b:{b:{l:{e:{_:1}},u:{f:{f:{e:{t:{_:1}}}}}}},e:{_:1,s:{_:1}},k:{_:1,e:{_:1,n:{_:1}}},l:{f:{_:1,r:{a:{m:{_:1}}}},v:{e:{s:{_:1}}}},m:{a:{n:{_:1,h:{o:{o:{d:{_:1}}}},i:{z:{e:{r:{_:1}},i:{n:{g:{_:1}}}}},l:{y:{_:1}}}},b:{_:1},e:{n:{_:1}}},n:{_:1,d:{e:{r:{_:1,e:{d:{_:1}},f:{u:{l:{_:1,l:{y:{_:1}}}}},i:{n:{g:{_:1}}},l:{a:{n:{d:{_:1}}}},s:{_:1}}},r:{o:{u:{s:{_:1}}}}},k:{y:{_:1}},t:{_:1}},o:{_:1,b:{a:{t:{_:1}}},d:{_:1,c:{h:{u:{c:{k:{_:1}}}}},e:{d:{_:1},n:{_:1}},l:{a:{n:{d:{_:1}}}},p:{e:{c:{k:{e:{r:{_:1}}}}}},s:{_:1,h:{e:{d:{_:1}}},y:{_:1}},w:{o:{r:{k:{_:1}}}},y:{_:1}},e:{d:{_:1}},f:{_:1},i:{n:{g:{_:1}}},l:{_:1,l:{y:{_:1}},o:{o:{_:1}}},p:{e:{r:{_:1}},s:{_:1}},z:{y:{_:1}}},r:{d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},e:{_:1},k:{_:1,a:{b:{l:{e:{_:1}}},h:{o:{l:{i:{c:{_:1}}}}}},d:{a:{y:{_:1}}},e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1,s:{_:1}}}},l:{o:{a:{d:{_:1}}}},m:{a:{n:{_:1}},e:{n:{_:1}}},o:{u:{t:{_:1}}},p:{l:{a:{c:{e:{_:1}}}}},s:{_:1,h:{o:{p:{_:1}}},t:{a:{t:{i:{o:{n:{_:1}}}}}}},u:{p:{_:1}}},l:{d:{_:1,l:{y:{_:1}},s:{_:1},w:{i:{d:{e:{_:1}}}}}},m:{_:1,a:{d:{a:{m:{_:1}}}},e:{d:{_:1}},h:{o:{l:{e:{_:1}}}},i:{n:{g:{_:1}}},s:{_:1}},n:{_:1},r:{i:{e:{d:{_:1},r:{_:1},s:{_:1}},s:{o:{m:{e:{_:1}}}}},y:{_:1,i:{n:{g:{_:1}}},w:{a:{r:{t:{_:1}}}}}},s:{e:{_:1,n:{e:{d:{_:1}}}},h:{i:{p:{_:1,e:{d:{_:1}},p:{e:{d:{_:1},r:{s:{_:1}}},i:{n:{g:{_:1}}}},s:{_:1}}}},t:{_:1}},t:{h:{_:1,l:{e:{s:{s:{_:1}}}},w:{h:{i:{l:{e:{_:1}}}}},y:{_:1}}}},u:{l:{d:{_:1}},n:{d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}},v:{e:{n:{_:1}}},w:{_:1,e:{d:{_:1}}}},r:{a:{c:{k:{e:{d:{_:1}},i:{n:{g:{_:1}}}}},i:{t:{h:{_:1}}},n:{g:{l:{e:{_:1,r:{_:1}}}}},p:{_:1,p:{e:{d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}},s:{_:1}},s:{t:{o:{r:{_:1}}}},t:{h:{_:1}}},e:{a:{k:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},t:{h:{s:{_:1}}}},c:{k:{_:1,a:{g:{e:{_:1}}},e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},n:{c:{h:{_:1,e:{d:{_:1}}}}},s:{t:{l:{e:{_:1,r:{_:1}},i:{n:{g:{_:1}}}}}},t:{c:{h:{_:1,e:{d:{_:1}}}}}},i:{g:{g:{l:{e:{_:1}}},h:{t:{_:1}}},n:{g:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}}},k:{l:{e:{_:1,d:{_:1},s:{_:1}},y:{_:1}}}},s:{t:{_:1,s:{_:1}}},t:{_:1,e:{_:1,r:{_:1,s:{_:1}},s:{_:1}},h:{i:{n:{g:{_:1}}}},i:{n:{g:{_:1,s:{_:1}}}},t:{e:{n:{_:1}}}}},o:{n:{g:{_:1,e:{d:{_:1}},f:{u:{l:{_:1,l:{y:{_:1}}}}},s:{_:1}}},t:{e:{_:1}},u:{g:{h:{t:{_:1}}}}},u:{n:{g:{_:1}}},y:{_:1}},u:{r:{m:{p:{l:{e:{_:1}}}}},s:{s:{_:1,i:{e:{s:{_:1}}},y:{_:1}}},t:{h:{e:{r:{i:{n:{g:{_:1}}}}}}}},y:{n:{a:{u:{t:{_:1}}},n:{_:1}},r:{m:{w:{i:{n:{d:{_:1}}}}}}}};