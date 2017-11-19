///scr_teleport_state



if sprite_index = spr_player_up then {
if position_empty(phy_position_x, (phy_position_y - 25)) {
image_speed = .02;

//Create Fire Effect when Teleporting
//instance_create(phy_position_x, (phy_position_y - teleport_distance), obj_teleport);

phy_position_y -= teleport_distance;
}
}

if sprite_index = spr_player_down then {
if position_empty(phy_position_x, (phy_position_y + 25)) {
image_speed = .02;

//Create Fire Effect when Teleporting
//instance_create(phy_position_x, (phy_position_y + teleport_distance), obj_teleport);

phy_position_y += teleport_distance;
}
}

if sprite_index = spr_player_left then {
if position_empty((phy_position_x - 25), (phy_position_y)) {
image_speed = .02;

//Create Fire Effect when Teleporting
//instance_create((phy_position_x - teleport_distance), (phy_position_y), obj_teleport);

phy_position_x -= teleport_distance;
}
}

if sprite_index = spr_player_right then {
if position_empty((phy_position_x + 25), (phy_position_y)) {
image_speed = .02;

//Create Fire Effect when Teleporting
//instance_create((phy_position_x + teleport_distance), (phy_position_y), obj_teleport);

phy_position_x += teleport_distance;
}
}

state = scr_Move_State;

