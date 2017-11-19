///scr_enemy_choose_next_state();
if (alarm[0] <= 0) {
    state = choose(scr_enemy_Idle_State, scr_enemy_Wander_State);
    alarm[0] = room_speed*irandom_range(2,4);
    targetx = random(room_width);
    targety = random(room_height);
}
