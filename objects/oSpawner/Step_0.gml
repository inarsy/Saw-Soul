timer -= 1;
if timer <= 0 {
	
	//spawn enemy thingy
	var _xspawn = irandom_range(0, room_width);
	var _yspawn = irandom_range(0, room_height);
	instance_create_depth(_xspawn, _yspawn, depth, oHex);
	
	//reset timer
	timer = irandom_range(timer_range[0], timer_range[1]);
}