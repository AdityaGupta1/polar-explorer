/// @description bullet collision

health -= other.damage;
instance_destroy(other);

if (health < 0) {
	instance_destroy();
}