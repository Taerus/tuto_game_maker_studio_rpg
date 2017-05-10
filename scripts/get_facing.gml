/// get_facing(direction)
var dir = argument0;

var facing = round(dir/90) mod 4;

return facing;
