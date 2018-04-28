/// @description shoot bullet

if (canShoot && instance_exists(obj_player)) {
	canShoot = false
	alarm[0] = room_speed;
	bullet = instance_create_layer(x, y, "Instances", obj_enemy_bullet);
	bullet.direction = point_direction(x, y, obj_player.x, obj_player.y);
	bullet.image_angle = bullet.direction;
}
