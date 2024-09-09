//bounce
if bbox_right >= room_width or bbox_left <= 0
hsp *= -1;

if bbox_top <= 0 or bbox_bottom >= room_height
vsp *= -1; 

//apply movement
x += hsp;
y += vsp;

