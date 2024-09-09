/// @desc
view_width = 144;
view_height = 144;
globalvar window_scale; window_scale = 5;

target = oPlayer;

//window_set_fullscreen(true);

window_set_size(view_width*window_scale, view_height*window_scale);
alarm[0] = 1;

surface_resize(application_surface, view_width*window_scale, view_height*window_scale);

//browser fullscreen junk
//if (os_browser != browser_not_a_browser && !instance_exists(obj_HTML_FS)) { instance_create_depth(x,y,depth,obj_HTML_FS); }

//screenshake
shake = 0;

//randomize
randomize();