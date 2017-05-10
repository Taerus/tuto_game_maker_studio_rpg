///get_input()

// Movement input
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);

xaxis = right - left;
yaxis = down - up;

if (xaxis * yaxis != 0) {
    xaxis /= 1.4142;
    yaxis /= 1.4142;
}

// Menu navigation input
up_pressed = keyboard_check_pressed(vk_up);
down_pressed = keyboard_check_pressed(vk_down);
left_pressed = keyboard_check_pressed(vk_left);
right_pressed = keyboard_check_pressed(vk_right);

// Action and back input
action = keyboard_check_pressed(ord('X'));
back = keyboard_check_pressed(ord('W'));
