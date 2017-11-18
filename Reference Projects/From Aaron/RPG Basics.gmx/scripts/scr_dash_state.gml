///scr_dash_state

if (len == 0) {
dir = face*90;
}


len = spd*4;
//Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);




//Create Fire Effect when Teleporting
instance_create(phy_position_x, (phy_position_y), obj_teleport);
var xx = 0;
var yy = 0;
var damage = instance_create(phy_position_x, (phy_position_y), obj_damage);
damage.creator = id;



// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Create the dash effect

var dash = instance_create(x, y, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;
dashcd = true;
obj_player.alarm[1] = 300;



