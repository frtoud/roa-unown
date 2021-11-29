var atk = 5; // E
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("attack_E"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("attack_E_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

set_window_value(atk, 1, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, 1, AG_WINDOW_SFX, asset_get("sfx_crunch_water"));
set_window_value(atk, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(atk, 2, AG_WINDOW_LENGTH, 4);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 1);

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 2);
set_hitbox_value(atk, 1, HG_LIFETIME, 4);
set_hitbox_value(atk, 1, HG_HITBOX_X, 30);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 1, HG_WIDTH, 42);
set_hitbox_value(atk, 1, HG_HEIGHT, 64);
set_hitbox_value(atk, 1, HG_SHAPE, 1);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 9);
set_hitbox_value(atk, 1, HG_ANGLE, 30);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(atk, 1, HG_UNOWN_DAMAGE_BONUS, 6);
set_hitbox_value(atk, 1, HG_UNOWN_KNOCKBACK_BONUS, 3);
set_hitbox_value(atk, 1, HG_UNOWN_SCALING_BONUS, 0.15);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_crunch"));

//================================================================
//WORD DATA
set_window_value(UNOWN_ATK.E, 2, AG_UNOWN_WINDOW_ACTIVE, true);
if ("e" not in unown_dictionary) unown_dictionary.e = make_trie_E();
//================================================================
//contains words starting with E
#define make_trie_E()
    return {a:{c:{h:{_:1}},g:{e:{r:{_:1,l:{y:{_:1}}}},l:{e:{_:1,s:{_:1}}}},r:{_:1,f:{u:{l:{_:1}}},l:{_:1,i:{e:{r:{_:1},s:{t:{_:1}}}},o:{b:{e:{_:1,s:{_:1}}}},y:{_:1}},m:{a:{r:{k:{e:{d:{_:1}},s:{_:1}}}}},n:{_:1,e:{d:{_:1},s:{t:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},p:{h:{o:{n:{e:{s:{_:1}}}}},i:{e:{c:{e:{_:1}}}},l:{u:{g:{s:{_:1}}}}},r:{i:{n:{g:{_:1,s:{_:1}}}}},s:{_:1,h:{o:{t:{_:1}}}},t:{h:{_:1,l:{i:{n:{g:{s:{_:1}}}},y:{_:1}},q:{u:{a:{k:{e:{_:1,s:{_:1}}}}}},y:{_:1}}},w:{i:{g:{_:1}}}},s:{e:{_:1,l:{_:1},s:{_:1}},i:{e:{r:{_:1},s:{t:{_:1}}},l:{y:{_:1}},n:{g:{_:1}}},t:{_:1,b:{o:{u:{n:{d:{_:1}}}}},e:{r:{_:1,n:{_:1}}}},y:{_:1,g:{o:{i:{n:{g:{_:1}}}}}}},t:{_:1,e:{n:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},s:{_:1}},v:{e:{s:{_:1,d:{r:{o:{p:{_:1,p:{e:{d:{_:1}},i:{n:{g:{_:1}}}}}}}}}}}},b:{b:{_:1},o:{n:{y:{_:1}}}},c:{c:{e:{n:{t:{r:{i:{c:{_:1,i:{t:{i:{e:{s:{_:1}}}}}}}}}}}},h:{e:{l:{o:{n:{_:1}}}},o:{_:1,e:{s:{_:1}}}},l:{e:{c:{t:{i:{c:{_:1}}}}},i:{p:{s:{e:{_:1}}}}},o:{l:{o:{g:{i:{c:{a:{l:{_:1}}}}}}},n:{o:{m:{i:{c:{_:1,a:{l:{_:1,l:{y:{_:1}}}},s:{_:1}}},y:{_:1}}}},s:{y:{s:{t:{e:{m:{_:1}}}}}}},s:{t:{a:{s:{y:{_:1}},t:{i:{c:{_:1}}}}}},t:{o:{p:{i:{c:{_:1}},l:{a:{s:{m:{_:1}}}}}}},u:{m:{e:{n:{i:{c:{a:{l:{_:1}}}}}}}},z:{e:{m:{a:{_:1}}}}},d:{_:1,d:{y:{_:1}},e:{m:{a:{_:1}}},g:{e:{_:1,d:{_:1},s:{_:1},w:{i:{s:{e:{_:1}}}}},i:{n:{g:{_:1}}},y:{_:1}},i:{b:{l:{e:{_:1}}},c:{t:{_:1}},t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}},o:{r:{_:1,i:{a:{l:{_:1,s:{_:1}}}},s:{_:1}}},s:{_:1}}},u:{c:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,a:{l:{_:1}}}}},o:{r:{_:1,s:{_:1}}}}}}}},e:{l:{_:1,s:{_:1},e:{k:{t:{r:{i:{k:{_:1}},o:{s:{s:{_:1}}}}}}}},r:{i:{e:{_:1},l:{y:{_:1}}}},v:{e:{e:{_:1}}}},f:{f:{a:{c:{i:{n:{g:{_:1}}}}},e:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},v:{e:{_:1,l:{y:{_:1}},n:{e:{s:{s:{_:1}}}}}}},s:{_:1}}},m:{i:{n:{a:{t:{e:{_:1}}}}}}},i:{c:{i:{e:{n:{c:{y:{_:1}},t:{_:1,l:{y:{_:1}}}}}}}},o:{r:{t:{_:1,l:{e:{s:{s:{_:1}}}},s:{_:1}}}}}},g:{g:{_:1,h:{e:{a:{d:{_:1}}}},i:{n:{g:{_:1}}},n:{o:{g:{_:1}}},p:{l:{a:{n:{t:{_:1}}}}},s:{_:1,h:{e:{l:{l:{_:1,s:{_:1}}}}}}},o:{_:1,c:{e:{n:{t:{r:{i:{c:{_:1}}}}}}},m:{a:{n:{i:{a:{c:{_:1,a:{l:{_:1}}}}}}}},s:{_:1},t:{i:{s:{t:{i:{c:{a:{l:{_:1}}}}}}}}},r:{e:{g:{i:{o:{u:{s:{_:1}}}}}}},y:{p:{t:{i:{a:{n:{_:1}}}}}}},h:{_:1},i:{g:{h:{t:{_:1,e:{e:{n:{_:1,t:{h:{_:1}}}}},h:{_:1},i:{e:{s:{_:1}}},s:{_:1},y:{_:1}}}},n:{s:{t:{e:{i:{n:{_:1}}}}}},t:{h:{e:{r:{_:1}}}},s:{c:{u:{e:{_:1}}}}},j:{a:{c:{u:{l:{a:{t:{e:{_:1}}}}}}},e:{c:{t:{_:1,i:{o:{n:{_:1}}}}}}},k:{i:{n:{g:{_:1}}},a:{n:{s:{_:1}}}},l:{_:1,a:{b:{o:{r:{a:{t:{e:{_:1}}}}}},p:{s:{e:{d:{_:1}}}},s:{t:{i:{c:{_:1}}}},t:{e:{d:{_:1}}}},b:{o:{w:{_:1,s:{_:1}}}},d:{e:{r:{_:1,l:{y:{_:1}},s:{_:1}},s:{t:{_:1}},g:{o:{s:{s:{_:1}}}}}},e:{c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}},v:{e:{_:1},i:{r:{e:{_:1}}}}},o:{r:{a:{l:{_:1},t:{e:{_:1}}}}},r:{i:{c:{_:1,a:{l:{_:1}},i:{a:{n:{_:1,s:{_:1}}},t:{y:{_:1}}}},f:{i:{e:{d:{_:1}}}},k:{e:{_:1}}},o:{_:1,c:{u:{t:{e:{_:1,d:{_:1}}}}},d:{e:{s:{_:1},_:1}},l:{y:{t:{e:{_:1,s:{_:1}}}}},n:{i:{c:{_:1,a:{l:{l:{y:{_:1}}}},s:{_:1}}},s:{_:1}},s:{h:{o:{c:{k:{_:1}}}}}}},a:{b:{u:{z:{z:{_:1}}}}}}},g:{a:{n:{c:{e:{_:1}},t:{_:1}}}},m:{e:{n:{t:{_:1,a:{l:{_:1},r:{y:{_:1}}},s:{_:1}}}}},p:{h:{a:{n:{t:{_:1,s:{_:1}}}}}},v:{a:{t:{e:{_:1,d:{_:1},s:{_:1}},i:{o:{n:{_:1}}},o:{r:{_:1,s:{_:1}}}}},e:{n:{_:1,t:{h:{_:1}}}}},k:{i:{d:{_:1}}}},f:{_:1},i:{c:{i:{t:{_:1}}},g:{i:{b:{l:{e:{_:1}}}}},m:{i:{n:{a:{t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}}},t:{e:{_:1},i:{s:{t:{_:1}}}},x:{i:{r:{_:1}}}},k:{_:1,s:{_:1}},l:{_:1,i:{p:{t:{i:{c:{a:{l:{_:1}}}}}},a:{n:{a:{_:1}}}}},m:{_:1,s:{_:1}},o:{p:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}},q:{u:{e:{n:{c:{e:{_:1}},t:{_:1,l:{y:{_:1}}}}}}}},s:{e:{_:1,w:{h:{e:{r:{e:{_:1}}}}}}},u:{d:{e:{_:1,d:{_:1},s:{_:1}}},s:{i:{v:{e:{_:1}}}}},v:{e:{s:{_:1}}},g:{y:{e:{m:{_:1}}}}},m:{_:1,a:{n:{a:{t:{e:{s:{_:1}}}},c:{i:{p:{a:{t:{e:{d:{_:1}},i:{o:{n:{_:1}}}}}}}}}},b:{a:{l:{m:{e:{d:{_:1}},i:{n:{g:{_:1}}}}},n:{k:{m:{e:{n:{t:{_:1}}}}}},r:{k:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}},r:{a:{s:{s:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1,l:{y:{_:1}}}}},m:{e:{n:{t:{_:1}}}}}}}}},s:{s:{i:{e:{s:{_:1}}},y:{_:1}}}},e:{d:{d:{e:{d:{_:1}}}},l:{l:{i:{s:{h:{e:{d:{_:1}}}}}}},r:{_:1},z:{z:{l:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1}}}},r:{_:1}},i:{n:{g:{_:1}}}}}}},i:{t:{t:{e:{r:{e:{d:{_:1}}}}}}},l:{e:{m:{_:1}}},o:{d:{i:{e:{d:{_:1}}},y:{_:1}},s:{s:{e:{d:{_:1}}}},a:{r:{_:1}}},r:{a:{c:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},o:{i:{d:{e:{r:{e:{d:{_:1}}}}},l:{e:{d:{_:1}}}}},y:{o:{_:1}}}},e:{r:{a:{l:{d:{_:1,s:{_:1}}}},g:{e:{_:1,d:{_:1},n:{c:{i:{e:{s:{_:1}}},y:{_:1}}},s:{_:1}}},y:{_:1}}},i:{n:{e:{n:{c:{e:{_:1}},t:{_:1,l:{y:{_:1}}}}}},s:{s:{i:{o:{n:{_:1,s:{_:1}}}}}},t:{_:1}},o:{t:{i:{o:{n:{_:1,a:{l:{_:1,l:{y:{_:1}}}},s:{_:1}}}}},l:{g:{a:{_:1}}}},p:{a:{t:{h:{i:{c:{_:1}},y:{_:1}}}},e:{r:{o:{r:{_:1,s:{_:1}}}}},h:{a:{s:{i:{s:{_:1},z:{e:{_:1,d:{_:1}}}}},t:{i:{c:{_:1,a:{l:{l:{y:{_:1}}}}}}}}},i:{r:{e:{_:1},i:{c:{a:{l:{_:1}}}}}},l:{o:{y:{_:1,e:{d:{_:1},e:{_:1,s:{_:1}},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1}}}}}}},o:{r:{i:{u:{m:{_:1}}}},w:{e:{r:{e:{d:{_:1}},m:{e:{n:{t:{_:1}}}}}}},l:{e:{o:{n:{_:1}}}}},r:{e:{s:{s:{_:1}}}},t:{i:{e:{d:{_:1},s:{_:1}},n:{e:{s:{s:{_:1}}}}},y:{_:1,i:{n:{g:{_:1}}}}}},s:{_:1},u:{l:{a:{t:{i:{n:{g:{_:1}}}}}}}},n:{_:1,a:{b:{l:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},c:{t:{_:1,e:{d:{_:1}}}},m:{e:{l:{_:1}},o:{r:{e:{d:{_:1}}}}}},c:{e:{p:{h:{a:{l:{i:{t:{i:{s:{_:1}}}}}}}}},h:{a:{n:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1}}}}}}}},i:{n:{a:{s:{_:1}}}},l:{o:{s:{e:{d:{_:1}}}}},o:{d:{e:{d:{_:1}}},r:{e:{_:1}},u:{n:{t:{e:{r:{_:1,e:{d:{_:1}},s:{_:1}}}}},r:{a:{g:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1}}}},s:{_:1}},i:{n:{g:{_:1}}}}}}}},r:{u:{s:{t:{e:{d:{_:1}}}}},y:{p:{t:{e:{d:{_:1}},i:{o:{n:{_:1}}}}}}},y:{c:{l:{o:{p:{e:{d:{i:{a:{_:1,s:{_:1}}}}}}}}}}},d:{_:1,a:{n:{g:{e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1}}}}}}}}},e:{a:{r:{_:1,i:{n:{g:{_:1}}}},v:{o:{r:{_:1,s:{_:1}},u:{r:{_:1}}}}},d:{_:1}},i:{n:{g:{_:1,s:{_:1}}},v:{e:{_:1}}},l:{e:{s:{s:{_:1,l:{y:{_:1}}}}}},o:{r:{p:{h:{i:{n:{s:{_:1}}}}},s:{e:{_:1,m:{e:{n:{t:{_:1,s:{_:1}}}}}},i:{n:{g:{_:1}}}}},w:{m:{e:{n:{t:{_:1}}}}}},s:{_:1},u:{r:{a:{n:{c:{e:{_:1}}}},e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}},e:{m:{a:{_:1},i:{e:{s:{_:1}}},y:{_:1}},r:{g:{i:{z:{e:{d:{_:1}}}},y:{_:1}}}},f:{o:{r:{c:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1}}}},r:{_:1}},i:{n:{g:{_:1}}}}}}},g:{_:1,a:{g:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1,s:{_:1}}}}},s:{_:1}},i:{n:{g:{_:1}}}}},i:{n:{e:{_:1,e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},s:{_:1}}}},l:{i:{s:{h:{_:1}}}},r:{a:{v:{e:{d:{_:1}},i:{n:{g:{_:1}}}}},o:{s:{s:{e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},u:{l:{f:{e:{d:{_:1}}}}}},h:{a:{n:{c:{e:{_:1,d:{_:1},m:{e:{n:{t:{s:{_:1}}}}},r:{_:1},s:{_:1}}}}}},i:{g:{m:{a:{_:1}}}},j:{o:{y:{_:1,a:{b:{l:{e:{_:1}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1}}}},s:{_:1}}}},l:{a:{r:{g:{e:{d:{_:1}}}}},i:{g:{h:{t:{e:{n:{_:1,e:{d:{_:1}},m:{e:{n:{t:{_:1}}}}}}}}},s:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}}},n:{u:{i:{_:1}}},o:{r:{m:{i:{t:{y:{_:1}}},o:{u:{s:{_:1,l:{y:{_:1}}}}}}},u:{g:{h:{_:1}}}},q:{u:{i:{r:{i:{e:{s:{_:1}}}}}}},r:{a:{g:{e:{_:1,d:{_:1}}}},i:{c:{h:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}}}},o:{l:{l:{e:{d:{_:1}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1}}}}}}}},s:{c:{o:{n:{c:{e:{d:{_:1}}}}}},e:{m:{b:{l:{e:{_:1}}}}},i:{g:{n:{_:1}}},l:{a:{v:{e:{_:1,d:{_:1}}}}},u:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}},r:{e:{_:1},i:{n:{g:{_:1}}}}}},t:{a:{i:{l:{_:1,s:{_:1}}},n:{g:{l:{e:{m:{e:{n:{t:{s:{_:1}}}}}}}}}},e:{r:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},p:{r:{i:{s:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}}}},s:{_:1},t:{a:{i:{n:{_:1,e:{d:{_:1},r:{_:1}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1}}}}}}}}},i:{_:1}},h:{r:{a:{l:{l:{e:{d:{_:1}}}}}},u:{s:{e:{d:{_:1}},i:{a:{s:{m:{_:1},t:{_:1,i:{c:{_:1}}}}}}}}},i:{c:{e:{_:1,d:{_:1}}},r:{e:{_:1,l:{y:{_:1}},t:{y:{_:1}}}},t:{i:{e:{s:{_:1}}},l:{e:{_:1,d:{_:1},s:{_:1}}},y:{_:1}}},o:{m:{o:{l:{o:{g:{i:{s:{t:{_:1}}},y:{_:1}}}}}},u:{r:{a:{g:{e:{_:1}}}}}},r:{a:{i:{l:{s:{_:1}}},n:{c:{e:{_:1,s:{_:1}}}},p:{m:{e:{n:{t:{_:1}}}}}},e:{e:{_:1},n:{c:{h:{e:{d:{_:1}}}}},p:{r:{e:{n:{e:{u:{r:{_:1,i:{a:{l:{_:1}}}}}}}}}}},i:{e:{s:{_:1}}},u:{s:{t:{_:1,e:{d:{_:1}}}}},y:{_:1}},w:{i:{n:{e:{d:{_:1}}}}}},v:{e:{l:{o:{p:{e:{_:1,s:{_:1}}}}}},i:{e:{d:{_:1}},o:{u:{s:{_:1}}},r:{o:{n:{m:{e:{n:{t:{_:1,a:{l:{_:1,i:{s:{t:{_:1}}}}}}}}}}}},s:{i:{o:{n:{_:1,e:{d:{_:1}}}}}}},o:{y:{_:1}},y:{_:1}},z:{y:{m:{e:{_:1}}}}},p:{h:{e:{m:{e:{r:{a:{l:{_:1}}}}}}},i:{c:{_:1},d:{e:{m:{i:{c:{_:1}}}},u:{r:{a:{l:{_:1}}}}},l:{e:{p:{s:{y:{_:1}},t:{i:{c:{_:1}}}}}},n:{e:{p:{h:{r:{i:{n:{e:{_:1}}}}}}}},p:{h:{a:{n:{y:{_:1}}}}},s:{o:{d:{e:{_:1,s:{_:1}}}}},z:{o:{o:{t:{i:{c:{s:{_:1}}}}}}}},o:{x:{y:{_:1}}},s:{i:{l:{o:{n:{_:1}}}}}},q:{u:{a:{l:{_:1,i:{t:{y:{_:1}}},l:{y:{_:1}},s:{_:1}},t:{i:{o:{n:{_:1}}},o:{r:{_:1}}}},e:{s:{t:{r:{i:{a:{n:{_:1}}}}}}},i:{l:{i:{b:{r:{i:{u:{m:{_:1}}}}}}},n:{o:{x:{_:1}}},p:{m:{e:{n:{t:{_:1}}}},p:{e:{d:{_:1}}}},t:{a:{b:{l:{e:{_:1}}}},y:{_:1}},v:{a:{l:{e:{n:{t:{_:1}}}}}}}}},r:{_:1,a:{_:1,s:{e:{_:1,d:{_:1},r:{_:1,s:{_:1}},s:{_:1}},i:{n:{g:{_:1}}}}},e:{_:1,c:{t:{_:1,i:{n:{g:{_:1}}}}}},g:{o:{_:1}},i:{c:{a:{_:1}}},o:{d:{e:{_:1},i:{n:{g:{_:1}}}},g:{e:{n:{o:{u:{s:{_:1}}}}}},s:{_:1,i:{o:{n:{_:1}}}},t:{i:{c:{_:1}}}},r:{_:1,a:{n:{d:{_:1,s:{_:1}},t:{_:1}},t:{i:{c:{_:1,a:{l:{l:{y:{_:1}}}}}}}},e:{d:{_:1}},o:{n:{e:{o:{u:{s:{_:1}}}}},r:{_:1,s:{_:1}}}},s:{_:1},u:{p:{t:{_:1,i:{o:{n:{_:1}}}}}}},s:{_:1,c:{a:{l:{a:{t:{e:{d:{_:1}},i:{n:{g:{_:1}}},o:{r:{_:1}}}}},p:{a:{d:{e:{_:1,s:{_:1}}}},e:{_:1,d:{_:1},e:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},r:{g:{o:{t:{_:1}}}},v:{a:{l:{i:{e:{r:{_:1}}}}}}},o:{r:{t:{_:1,e:{d:{_:1}},s:{_:1}}}}},o:{p:{h:{a:{g:{u:{s:{_:1}}}}}},t:{e:{r:{i:{c:{_:1}}}}}},p:{e:{c:{i:{a:{l:{l:{y:{_:1}}}}}},o:{n:{_:1}}},i:{o:{n:{a:{g:{e:{_:1}}}}}},r:{e:{s:{s:{o:{_:1,s:{_:1}}}}}},u:{r:{r:{_:1}}}},s:{_:1,a:{y:{_:1,s:{_:1}}},e:{n:{c:{e:{_:1}},t:{i:{a:{l:{_:1,l:{y:{_:1}}}}}}}}},t:{a:{b:{l:{i:{s:{h:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},m:{e:{n:{t:{_:1,s:{_:1}}}}}}}}}},t:{e:{_:1}}},e:{e:{m:{_:1,e:{d:{_:1}}}},r:{_:1}},i:{m:{a:{t:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}},r:{a:{n:{g:{e:{d:{_:1}}}}},o:{g:{e:{n:{_:1}}}}}}},t:{_:1,a:{_:1,l:{u:{s:{_:1}}}},c:{e:{t:{e:{r:{a:{_:1}}}}},h:{e:{d:{_:1}}}},e:{r:{n:{a:{l:{_:1,l:{y:{_:1}}},t:{u:{s:{_:1}}}},i:{t:{y:{_:1}}}}}},h:{_:1,a:{n:{o:{l:{_:1}}}},e:{r:{_:1}},i:{c:{_:1,a:{l:{_:1,l:{y:{_:1}}}},s:{_:1}}},n:{i:{c:{_:1,i:{t:{y:{_:1}}}}}},y:{l:{_:1}}},i:{q:{u:{e:{t:{t:{e:{_:1}}}}}}}},u:{c:{a:{l:{y:{p:{t:{u:{s:{_:1}}}}}}}},g:{e:{n:{i:{a:{_:1}}}}},l:{o:{g:{y:{_:1}}}},n:{u:{c:{h:{_:1}}}},p:{h:{e:{m:{i:{s:{m:{_:1,s:{_:1}}}}}},o:{r:{i:{c:{_:1}}}}}},r:{o:{_:1,s:{_:1}}},t:{h:{a:{n:{a:{s:{i:{a:{_:1}}}}}}}}},v:{a:{c:{u:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}},d:{e:{_:1}},l:{u:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}}}}}}},n:{g:{e:{l:{i:{c:{a:{l:{_:1}}}}}}}},p:{o:{r:{a:{t:{e:{_:1,d:{_:1}}}}}}},s:{i:{o:{n:{s:{_:1}}},v:{e:{_:1}}}}},e:{_:1,n:{_:1,i:{n:{g:{_:1,s:{_:1}}}},l:{y:{_:1}},s:{_:1},t:{_:1,f:{u:{l:{_:1}}},s:{_:1},u:{a:{l:{_:1,i:{t:{y:{_:1}}},l:{y:{_:1}}}}}}},r:{_:1,g:{l:{a:{d:{e:{s:{_:1}}}}}},l:{a:{s:{t:{i:{n:{g:{_:1}}}}}}},y:{_:1,b:{o:{d:{y:{_:1}}}},d:{a:{y:{_:1}}},m:{a:{n:{_:1}}},o:{n:{e:{_:1}}},t:{h:{i:{n:{g:{_:1}}}}},w:{h:{e:{r:{e:{_:1}}}}}}},s:{_:1}},i:{c:{t:{_:1,e:{d:{_:1}}}},d:{e:{n:{c:{e:{_:1,d:{_:1}}},t:{_:1,l:{y:{_:1}}}}}},l:{_:1,s:{_:1}},s:{c:{e:{r:{a:{t:{e:{_:1,d:{_:1}}}}}}}}},o:{c:{a:{t:{i:{v:{e:{_:1}}}}}},k:{e:{d:{_:1}}},l:{u:{t:{i:{o:{n:{_:1,a:{r:{y:{_:1}}}}}}}},v:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}}}}}}},w:{e:{_:1}},x:{_:1,a:{c:{e:{r:{b:{a:{t:{e:{_:1}}}}}},t:{_:1,i:{n:{g:{_:1}}},l:{y:{_:1}}}},g:{g:{e:{r:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}}}},l:{t:{e:{d:{_:1}}}},m:{_:1,i:{n:{a:{t:{i:{o:{n:{_:1}}}}},e:{_:1,d:{_:1},r:{_:1}},i:{n:{g:{_:1}}}}},p:{l:{e:{_:1,s:{_:1}}}},s:{_:1}},s:{p:{e:{r:{a:{t:{e:{d:{_:1}},i:{n:{g:{_:1}}}}}}}}}},c:{e:{e:{d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1,l:{y:{_:1}}}}},s:{_:1}}},l:{_:1,l:{e:{n:{c:{e:{_:1},y:{_:1}},t:{_:1}}}},s:{_:1}},p:{t:{_:1,e:{d:{_:1}},i:{o:{n:{_:1,a:{l:{_:1,l:{y:{_:1}}}},s:{_:1}}}}}},s:{s:{_:1,e:{s:{_:1}},i:{v:{e:{_:1,l:{y:{_:1}}}}}}}},h:{a:{n:{g:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}}},i:{t:{e:{_:1,d:{_:1},m:{e:{n:{t:{_:1}}}},s:{_:1}},i:{n:{g:{_:1}}}}},l:{a:{m:{a:{t:{i:{o:{n:{_:1}}}}}}},u:{d:{e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},s:{i:{o:{n:{_:1}},v:{e:{_:1,l:{y:{_:1}}}}}}}},o:{m:{m:{u:{n:{i:{c:{a:{t:{e:{d:{_:1}}}}}}}}}}},r:{u:{c:{i:{a:{t:{i:{n:{g:{_:1}}}}}}}}},u:{l:{p:{a:{t:{o:{r:{y:{_:1}}}}}}},r:{s:{i:{o:{n:{_:1,s:{_:1}}}}}},s:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}},a:{d:{r:{i:{l:{l:{_:1}}}}}}},e:{c:{s:{_:1},u:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,e:{r:{_:1}},s:{_:1}}},v:{e:{_:1,s:{_:1}}}},o:{r:{_:1}}}}},m:{p:{l:{a:{r:{y:{_:1}}}},t:{_:1,i:{o:{n:{_:1,s:{_:1}}}}}}},r:{c:{i:{s:{e:{_:1,s:{_:1}},i:{n:{g:{_:1}}}}}},t:{i:{n:{g:{_:1}},o:{n:{_:1}}}}},s:{_:1},g:{g:{c:{u:{t:{e:{_:1}}}},u:{t:{o:{r:{_:1}}}}}}},f:{o:{l:{i:{a:{t:{e:{_:1}}}}}}},h:{a:{l:{e:{_:1}},u:{s:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}},v:{e:{_:1}}},s:{_:1}}}}},i:{b:{i:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}},s:{_:1}}}},l:{a:{r:{a:{t:{e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}}}}}}}},u:{m:{a:{t:{i:{o:{n:{_:1}}}}},e:{_:1,d:{_:1}}}}},i:{g:{e:{n:{t:{_:1}}}},l:{e:{_:1,d:{_:1},s:{_:1}}},s:{t:{_:1,e:{d:{_:1},n:{c:{e:{_:1}},t:{_:1,i:{a:{l:{_:1,i:{s:{t:{_:1}}}}}}}}},i:{n:{g:{_:1}}},s:{_:1}}},t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},o:{d:{u:{s:{_:1}}},n:{e:{r:{a:{t:{e:{_:1,d:{_:1}}}}}}},r:{b:{i:{t:{a:{n:{t:{_:1}}}}}},c:{i:{s:{e:{_:1},m:{_:1},t:{_:1}}}}},t:{i:{c:{_:1}}}},p:{a:{n:{d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}},s:{i:{o:{n:{_:1}}}}}},e:{c:{t:{_:1,a:{n:{c:{y:{_:1}}},t:{i:{o:{n:{_:1,s:{_:1}}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},d:{i:{e:{n:{t:{_:1}}},t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1}}}}}},l:{_:1,l:{e:{d:{_:1}},i:{n:{g:{_:1}}}}},n:{d:{a:{b:{l:{e:{_:1}}}},i:{t:{u:{r:{e:{_:1,s:{_:1}}}}}}},s:{e:{_:1,s:{_:1}},i:{v:{e:{_:1}}}}},r:{i:{e:{n:{c:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}}}},m:{e:{n:{t:{_:1,a:{l:{_:1},t:{i:{o:{n:{_:1}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}}}}},t:{_:1,i:{s:{e:{_:1}}},s:{_:1}}}},i:{r:{a:{t:{i:{o:{n:{_:1}}}}},e:{d:{_:1},s:{_:1}}}},l:{a:{i:{n:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},n:{a:{t:{i:{o:{n:{_:1,s:{_:1}}}},o:{r:{y:{_:1}}}}}}},i:{c:{i:{t:{_:1,l:{y:{_:1}}}}}},o:{d:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}}},i:{t:{_:1,a:{t:{i:{o:{n:{_:1}}}}},e:{d:{_:1}},i:{n:{g:{_:1}}}}},r:{a:{t:{i:{o:{n:{_:1}}},o:{r:{y:{_:1}}}}},e:{_:1,d:{_:1},r:{_:1,s:{_:1}}},i:{n:{g:{_:1}}}},s:{i:{o:{n:{_:1,s:{_:1}}},v:{e:{_:1,s:{_:1}}}}},u:{d:{_:1}}}},o:{n:{e:{n:{t:{i:{a:{l:{_:1}}}}}}},r:{t:{_:1,e:{r:{_:1}},i:{n:{g:{_:1}}},s:{_:1}}},s:{e:{_:1,d:{_:1},s:{_:1}},i:{n:{g:{_:1}}},u:{r:{e:{_:1}}}}},r:{e:{s:{s:{_:1,e:{d:{_:1},s:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,s:{_:1}}},v:{e:{_:1}}},l:{y:{_:1}}}}}},u:{l:{s:{i:{o:{n:{_:1}}}}},n:{g:{e:{d:{_:1}}}}}},q:{u:{i:{s:{i:{t:{e:{_:1,l:{y:{_:1}}}}}}}}},t:{e:{n:{d:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}}}},s:{i:{o:{n:{_:1,s:{_:1}}},v:{e:{_:1}}}},t:{_:1},u:{a:{t:{i:{n:{g:{_:1}}}}}}},r:{i:{o:{r:{_:1}}},m:{i:{n:{a:{t:{e:{_:1,d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}},o:{r:{_:1}}}}}}},n:{a:{l:{_:1}}}}},i:{n:{c:{t:{_:1,i:{o:{n:{_:1}}}}},g:{u:{i:{s:{h:{_:1,e:{d:{_:1},r:{_:1}}}}}}}}},o:{r:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1,i:{s:{t:{_:1}}}}}}}}},r:{a:{_:1,c:{t:{_:1,e:{d:{_:1}},i:{n:{g:{_:1}},o:{n:{_:1}}},s:{_:1}},u:{r:{r:{i:{c:{u:{l:{a:{r:{_:1,s:{_:1}}}}}}}}}}},d:{i:{t:{e:{_:1,d:{_:1}},i:{o:{n:{_:1}}}}}},m:{a:{r:{i:{t:{a:{l:{_:1}}}}}}},o:{r:{d:{i:{n:{a:{i:{r:{e:{_:1}}},r:{i:{l:{y:{_:1}}},y:{_:1}}}}}}}},s:{_:1},t:{e:{r:{r:{e:{s:{t:{r:{i:{a:{l:{_:1}}}}}}}}}}},v:{a:{g:{a:{n:{t:{_:1},z:{a:{_:1}}}}}}}},e:{m:{e:{_:1,l:{y:{_:1}},s:{_:1}},i:{s:{m:{_:1},t:{s:{_:1}}},t:{i:{e:{s:{_:1}}}}}}},i:{c:{a:{t:{e:{_:1}}}}}}},w:{_:1}},y:{e:{_:1,b:{a:{l:{l:{_:1,s:{_:1}}}},r:{o:{w:{_:1,s:{_:1}}}}},d:{_:1},f:{u:{l:{_:1}}},i:{n:{g:{_:1}}},l:{a:{s:{h:{_:1,e:{s:{_:1}}}}},i:{d:{s:{_:1}},n:{e:{r:{_:1}}}}},s:{_:1,i:{g:{h:{t:{_:1}}}},o:{r:{e:{_:1}}}},w:{i:{t:{n:{e:{s:{s:{_:1,e:{s:{_:1}}}}}}}}}},r:{e:{_:1}}}};