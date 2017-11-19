///scr_get_input
right_key = keyboard_check(vk_right) or (keyboard_check(ord('D')));
left_key = keyboard_check(vk_left) or (keyboard_check(ord('A')));
up_key = keyboard_check(vk_up) or (keyboard_check(ord('W')));
down_key = keyboard_check(vk_down) or (keyboard_check(ord('S')));
dash_key = keyboard_check_pressed(ord('C'));
//teleport_key = keyboard_check_pressed(vk_space);
attack_key = keyboard_check_pressed(vk_space);
//attack_key = keyboard_check_pressed(ord('X'));

//Get Axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

//Check for gamepad input
if (gamepad_is_connected(0)) {
gamepad_set_axis_deadzone(0, .35);
xaxis = (gamepad_axis_value(0, gp_axislh));
yaxis = (gamepad_axis_value(0, gp_axislv));
dash_key = gamepad_button_check_pressed(0, gp_face1)
attack_key = gamepad_button_check_pressed(0, gp_face3)
}


