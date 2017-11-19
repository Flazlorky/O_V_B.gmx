
///scr_attack_state
image_speed = .5


switch (sprite_index) {
   case spr_player_down:
   //Do something
   sprite_index = spr_player_attack_down;
   break; 
   
    case spr_player_up:
   //Do something
   sprite_index = spr_player_attack_up;
   break; 
   
    case spr_player_left:
   //Do something
   sprite_index = spr_player_attack_left;
   break; 
   
   
    case spr_player_right:
   //Do something
   sprite_index = spr_player_attack_right;
   break; 
}





if (image_index >= 3 && attacked == false) {
var xx = 0;
var yy = 0;
switch (sprite_index) {

   case spr_player_attack_down:
         xx = x;
         yy = y + 12;
   break; 
  
    case spr_player_attack_up:
        xx = x;
        yy = y - 10; 
        break; 
   
    case spr_player_attack_right:
         xx = x + 10;
         yy = y + 2;
         break; 
  
   
    case spr_player_attack_left:
        xx = x - 10;
        yy = y + 2; 
        break; 
 }

var damage = instance_create(xx, yy, obj_Damage);
damage.damage = obj_Player_Stats.attack;
damage.creator = id;
attacked = true;
}
