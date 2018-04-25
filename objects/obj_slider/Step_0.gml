/// @description move slider according to cycle

value = sin(speed * (get_timer() / 1000000));
x = obj_player.x + (value * (48.5));
y = obj_player.y + initial_y;