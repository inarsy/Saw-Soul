//move away from other enemies
var _dir = point_direction(x, y, other.x, other.y);
var _horv = choose(0, 1);
if _horv == 0
x -= lengthdir_x(1, _dir);
else
y -= lengthdir_y(1, _dir);

//it chooses to do horiozontal or vertical because
//otherwise it just spreads them in one of the two (whichever comes first)