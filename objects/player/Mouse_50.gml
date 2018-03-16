/// @description shoot bullet

if (canShoot) {
	canShoot = false
	alarm[0] = room_speed / 8;
	bullet = instance_create_layer(x, y, "Instances", player_bullet);
	bullet.speed = 20;
	bullet.direction = image_angle;
	bullet.image_angle = image_angle;	
}