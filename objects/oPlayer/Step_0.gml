//inputs
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var _space = keyboard_check(vk_space);

//move about n shiz
var _hdir = _right-_left;
var _vdir = _down-_up;
dir = point_direction(0, 0, _hdir, _vdir);

var _spd = spd;
if _hdir == 0 and _vdir == 0 or instance_exists(oSoul)
_spd = 0;

hsp = lengthdir_x(_spd, dir);
vsp = lengthdir_y(_spd, dir);

//soul
if _space and !instance_exists(oSoul) and object_index != oSoul {
	instance_create_depth(x, y, depth-1, oSoul);	
}
else if instance_exists(oSoul) {
	if !_space {
		oSoul.retract = true;	
		
		if place_meeting(x, y, oSoul)
		instance_destroy(oSoul);
	}
	else
	oSoul.retract = false;
}

//when objects collide!!!!!
x += hsp;
y += vsp;

//animation
image_index = !instance_exists(oSoul);

//make em wobble maybe