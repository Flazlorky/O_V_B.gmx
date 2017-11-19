///scr_move_state


scr_get_input();
 
if (dash_key) {
if dashcd != true && obj_Player_Stats.stamina >= 5{
    image_index = 0;
    state = scr_Dash_State;
    alarm[0] =  room_speed/4;
    obj_Player_Stats.alarm[0] = room_speed;
    obj_Player_Stats.stamina -= 5;
    }
 }
 
 //if (teleport_key) {
 //image_index = 0;
 //state = scr_teleport_state;
 //}

if (attack_key) {
   image_index = 0;
   state = scr_Attack_State;
}

//Get direction
dir = point_direction(0, 0, xaxis, yaxis);

//Get length
if (xaxis == 0 && yaxis == 0) {
    len = 0;
} else {
    len = spd;
    scr_get_face();
}

//Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);


// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control the sprite
image_speed = .2
if (len == 0) image_index = 0;



switch (face) {
    case RIGHT:
        sprite_index = spr_player_right;
        break;
    case UP:
        sprite_index = spr_player_up;
        break;
    case LEFT:
        sprite_index = spr_player_left;
        break;
    case DOWN:
        sprite_index = spr_player_down;
        break;
}


