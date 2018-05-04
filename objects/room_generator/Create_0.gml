/// @description generate room

var mapId = layer_tilemap_get_id(layer_get_id("tiles"));

var cells;
var chance = 45;

randomize();

var i;
var j;
var k;

var maxTileX = tilemap_get_width(mapId); // 64
var maxTileY = tilemap_get_height(mapId); // 48

// create array with cells based on random chance
for (i = 0; i < maxTileY; i++) {
	for (j = 0; j < maxTileX; j++) {
		if (random_range(0, 100) < chance) {
			cells[i, j] = "alive";
		} else {
			cells[i, j] = "dead";
		}
	}
}

var newCells;

// generate map
for (k = 0; k < 50; k++) {
	for (i = 0; i < maxTileY; i++) {
		for (j = 0; j < maxTileX; j++) {
			var liveNeighbors = getLiveNeighbors(cells, i, j, maxTileX, maxTileY);
			
			if (cells[i, j] == "alive") {
				if (liveNeighbors < 3) {
					newCells[i, j] = "dead";
				}
			} else {
				if (liveNeighbors >= 6) {
					newCells[i, j] = "alive";
				}
			}
		}
	}
	
	cells = newCells;
}

for (i = 0; i < maxTileY; i++) {
	for (j = 0; j < maxTileX; j++) {
		tilemap_set(mapId, cells[i, j] == "alive" ? 1 : 0, i, j);
	}
}

show_message(cells);