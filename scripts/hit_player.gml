//hitplayer

if (my_hitboxID.attack == UNOWN_ATK.J && my_hitboxID.hbox_num == 1)
{
    if (!instance_exists(unown_j_victim))
    {
        //track victim
        unown_j_victim = hit_player_obj;
        sound_play(sound_get("ssbm_grab"));
        //grab phase 2
        window = 4;
        window_timer = 0;
        destroy_hitboxes();
    }
}

if (my_hitboxID.attack == UNOWN_ATK.Y && my_hitboxID.hbox_num == 2)
{
    var hfx = spawn_hit_fx(lerp(my_hitboxID.x, hit_player_obj.x, 0.5),
                           lerp(my_hitboxID.y, hit_player_obj.y, 0.5),
                                my_hitboxID.hit_effect);
}