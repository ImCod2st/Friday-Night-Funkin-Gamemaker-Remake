/// @description CamSpd
var cam = get_integer("Cam Speed:", global.camSpeed);
if (cam = 0) exit;
global.camSpeed = cam;