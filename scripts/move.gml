///move(hspd, vspd)
var hspd = argument0;
var vspd = argument1;

// Update facing
if (hspd != 0 || vspd != 0) {
    var dir = point_direction(0, 0, hspd, vspd);
    facing = get_facing(dir);
}

// Horizontal movement
if (!place_meeting(x+hspd, y, o_solid)) {
    x += hspd;
} else {
    x = round(x);
    for (var i=0; i < abs(hspd); i++) {
        if (!place_meeting(x+sign(hspd), y, o_solid)) {
            x += sign(hspd);
        }
    }
}

// Vertical movement
if (!place_meeting(x, y+vspd, o_solid)) {
    y += vspd;
} else {
    y = round(y);
    for (var i=0; i < abs(vspd); i++) {
        if (!place_meeting(x, y+sign(vspd), o_solid)) {
            y += sign(vspd);
        }
    }
}

var moved = (x != xprevious || y != yprevious);

// Update the sprite animation
if moved {
    image_speed = .2;
} else {
    image_speed = 0;
    image_index = 0;
}

// Return true if we are able to move
return moved;
