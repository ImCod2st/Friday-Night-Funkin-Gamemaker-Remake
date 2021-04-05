/// @description CamSpd
var cam = get_integer("Cam Speed:", global.camSpeed);
if (cam = 0) or (cam = undefined) exit;
global.camSpeed = cam;