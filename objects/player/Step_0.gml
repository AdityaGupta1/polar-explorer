/// @description update event

moveSpeed = 10;

key_right = keyboard_check(vk_right)
key_left = keyboard_check(vk_left)
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)

horizontal = (key_right - key_left) * moveSpeed;
vertical = (key_down - key_up) * moveSpeed;

bbox_side = horizontal > 0 ? bbox_right : bbox_left;
widthRight = bbox_right - x;
widthLeft = bbox_left - x;
if ((tilemap_get_at_pixel(tilemap, bbox_side + horizontal, bbox_bottom) == 0)
	|| (tilemap_get_at_pixel(tilemap, bbox_side + horizontal, bbox_top) == 0)) {
	x = x - (x % 64) + (horizontal > 0 ? (63 - widthRight) : (-widthLeft));
	horizontal = 0;
}

bbox_side = vertical > 0 ? bbox_bottom : bbox_top;
heightBottom = bbox_bottom - y;
heightTop = bbox_top - y;
if ((tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + vertical) == 0)
	|| (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + vertical) == 0)) {
	y = y - (y % 64) + (vertical > 0 ? (63 - heightBottom) : (-heightTop));
	vertical = 0;
}

x += horizontal;
y += vertical;

pointDirection = point_direction(x, y, mouse_x, mouse_y);
image_angle = (pointDirection > 90 && pointDirection < 270) ? 120 : 60;