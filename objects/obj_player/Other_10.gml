/// @description move

moveSpeed = 10;

if(keyboard_check(vk_right)) { x += moveSpeed; }
if(keyboard_check(vk_left)) { x -= moveSpeed; }
if(keyboard_check(vk_up)) { y -= moveSpeed; }
if(keyboard_check(vk_down)) { y += moveSpeed; }
image_angle = point_direction(x, y, mouse_x, mouse_y);