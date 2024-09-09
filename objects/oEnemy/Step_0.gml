dir = point_direction(x, y, oPlayer.x, oPlayer.y);
hsp = lengthdir_x(spd, dir);
vsp = lengthdir_y(spd, dir);

//apply movement mush
x += hsp;
y += vsp; 