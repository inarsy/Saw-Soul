//toggle fullscreen
var _alt = keyboard_check(vk_alt);
var _alt_pressed = keyboard_check_pressed(vk_alt);
var _enter = keyboard_check(vk_enter);
var _enter_pressed = keyboard_check_pressed(vk_enter);

if _alt and _enter_pressed
window_set_fullscreen(!window_get_fullscreen());
else if _alt_pressed and _enter
window_set_fullscreen(!window_get_fullscreen());

//screenshake
shake -= 1;

if shake > 0
layer_set_visible("screenshake", true);
else
layer_set_visible("screenshake", false);