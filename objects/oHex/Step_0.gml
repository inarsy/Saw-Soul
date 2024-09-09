timer -= 1;
if timer <= 0 {
	
	var _become_saw = irandom_range(0, 20);
	
	if _become_saw != 0 {
		var _num_enemies = irandom_range(3, 9);
		for(var i = 0; i < _num_enemies; i++) {
			instance_create_depth(x, y, depth, oEnemy); 
		}
	}
	else {
		instance_create_depth(x, y, depth, oSaw);	
	}
	
	instance_destroy(id);	
}