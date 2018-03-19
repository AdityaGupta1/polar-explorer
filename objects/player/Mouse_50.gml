/// @description shoot bullet

if (canShoot) {
	canShoot = false
	alarm[0] = room_speed / 8;
	bullet = instance_create_layer(x, y, "Instances", player_bullet);
	bullet.speed = 20;
	pointDirection = point_direction(x, y, mouse_x, mouse_y);
	bullet.direction = pointDirection;
	bullet.image_angle = pointDirection;	
}