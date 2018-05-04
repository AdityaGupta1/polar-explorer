var array = argument0;
var posY = argument1;
var posX = argument2;
var maxX = argument3 - 1;
var maxY = argument4 - 1;

var count = 0;

if (posX != 0) {
	// left
	count += array[posY, posX - 1] == "alive" ? 1 : 0;
	
	// up left
	if (posY != 0) {
		count += array[posY - 1, posX - 1] == "alive" ? 1 : 0;
	}
	
	// down left
	if (posY < maxY) {
		count += array[posY + 1, posX - 1] == "alive" ? 1 : 0;
	}
}

if (posY != 0) {
	// up
	count += array[posY - 1, posX] == "alive" ? 1 : 0;
	
	// up right
	if (posX < maxX) {
		count += array[posY - 1, posX + 1] == "alive" ? 1 : 0
	}
}

if (posX < maxX) {
	// right
	count += array[posY, posX + 1] == "alive" ? 1 : 0;
	
	// down right
	if (posY < maxY) {
		count += array[posY + 1, posX + 1] == "alive" ? 1 : 0;
	}
}

if (posY < maxY) {
	// down
	count += array[posY + 1, posX] == "alive" ? 1 : 0;
}

return count;