///elizabeth_move_state()
var hspd = o_input.xaxis * spd;
var vspd = o_input.yaxis * spd;

move(hspd, vspd);

// Check for a random encounter
if (!instance_exists(o_last_encounter)) {
    instance_create(x, y, o_last_encounter);
    o_last_encounter.distance = random_range(32, room_width/2);
} else {
    if (point_distance(x, y, o_last_encounter.x, o_last_encounter.y) >= o_last_encounter.distance) {
        o_last_encounter.distance = random_range(32, room_width/2);
        o_last_encounter.x = x;
        o_last_encounter.y = y;
        encounter();
    }
}
