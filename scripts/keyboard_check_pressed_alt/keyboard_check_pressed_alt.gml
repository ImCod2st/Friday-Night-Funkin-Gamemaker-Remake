// checks to see if the key or the alt key is pressed
function keyboard_check_pressed_alt(_key, _keyAlt){
	if (keyboard_check_pressed(_key)) or (keyboard_check_pressed(_keyAlt)) return true;
	else return false;
}