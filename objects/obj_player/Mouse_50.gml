
/// @description shoot bullet

if (canShoot) {
	canShoot = false
	alarm[0] = room_speed / 8;
	bullet = instance_create_layer(x, y, "Instances", obj_player_bullet);
	bullet.direction = image_angle;
	bullet.image_angle = image_angle;	
}