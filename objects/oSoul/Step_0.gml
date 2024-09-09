//inputs
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));

//move about n shiz
var _hdir = _right-_left;
var _vdir = _down-_up;
dir = point_direction(0, 0, _hdir, _vdir);

var _spd = spd;
if _hdir == 0 and _vdir == 0
_spd = 0;

if retract {
	dir = point_direction(x, y, oPlayer.x, oPlayer.y);	
	_spd = 5;
}

hsp = lengthdir_x(_spd, dir);
vsp = lengthdir_y(_spd, dir);

//when objects collide!!!!!
x += hsp;
y += vsp;

//trail
instance_create_depth(x, y, depth, oTrail);