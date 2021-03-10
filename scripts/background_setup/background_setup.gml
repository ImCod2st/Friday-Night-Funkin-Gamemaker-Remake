// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function background_setup(){
	// dad / everyone else
	if (global.enemy <= 1) or (global.enemy > 6) {
		if !(global.enemy = 102) {
			layer_set_visible(bgDad, true);
			layer_set_visible(bgDadFront, true);
			layer_set_visible(bgDadFrontmost, true);
		}
	}
	// spooky and monster
	if (global.enemy = 2) or (global.enemy = 3) {
		layer_set_visible(bgSpooky, true);
	
		if (global.enemy = 2) offsetY = 100;
		
		global.camWidth = 1152;
		global.camHeight = 648;
	}
	// go pico
	if (global.enemy = 4) {
		layer_set_visible(bgPicoStreet, true);
		layer_set_visible(bgPicoObjects, true);
		layer_set_visible(bgPicoWindows, true);
		layer_set_visible(bgPicoCity, true);
		layer_set_visible(bgPicoSky, true);
	
		var camX = camera_get_view_x(view_camera[0]) ;
		layer_x(bgPicoCity, camX * 0.5);
		layer_x(bgPicoWindows, camX * 0.5);
		layer_x(bgPicoSky, camX * 0.99 - 200);
	
		offsetY = 100;
		offsetX = 100;
		
		global.camWidth = 1152;
		global.camHeight = 648;
	}
	if (global.enemy = 5) {
		layer_set_visible(bgMomBGLimo, true);
		layer_set_visible(bgMomGF, true);
		layer_set_visible(bgMomDancers, true);
		layer_set_visible(bgMomLimo, true);
		layer_set_visible(bgMomSunset, true);
	
		var camX = camera_get_view_x(view_camera[0]) ;
		layer_x(bgMomBGLimo, camX * 0.5);
		layer_x(bgMomDancers, camX * 0.5);
		
		var dancer1 = layer_sprite_get_id(bgMomDancers, "dancer1");
		var dancer2 = layer_sprite_get_id(bgMomDancers, "dancer2");
		var dancer3 = layer_sprite_get_id(bgMomDancers, "dancer3");
		var dancer4 = layer_sprite_get_id(bgMomDancers, "dancer4");
		var spd = (global.bpm / 60) / 2 * global.deltaMultiplier;
		layer_sprite_speed(dancer1, spd);
		layer_sprite_speed(dancer2, spd);
		layer_sprite_speed(dancer3, spd);
		layer_sprite_speed(dancer4, spd);
		
		layer_x(bgMomSunset, camX * 0.97);
	
		oBoyfriend.x = 1601;
		oBoyfriend.y = 700;
		
		oEnemy.x = 752;
		oEnemy.y = 948;
		
		oGirlfriend.layer = bgMomGF;
		oGirlfriend.x = 1151;
		oGirlfriend.y = 886;
		
		offsetY = -180;
		bfOffsetY = -330;
	}
	if (global.enemy = 6) {
		layer_set_visible(bgChristSanta, true);
		layer_set_visible(bgChristFGSnow, true);
		layer_set_visible(bgChristBotBop, true);
		layer_set_visible(bgChristTree, true);
		layer_set_visible(bgChristUpBop, true);
		layer_set_visible(bgChristMain, true);
		
		var dancer1 = layer_sprite_get_id(bgChristSanta, "santa");
		var dancer2 = layer_sprite_get_id(bgChristBotBop, "botbops");
		var dancer3 = layer_sprite_get_id(bgChristUpBop, "upbop");
		var spd = (global.bpm / 60) * global.deltaMultiplier;
		layer_sprite_speed(dancer2, spd);
		layer_sprite_speed(dancer3, spd);
	
		var camX = camera_get_view_x(view_camera[0]);
		layer_x(bgChristTree, (camX * 0.2));
		layer_x(bgChristUpBop, camX * 0.3);
		
		oBoyfriend.x = 1920;
		oBoyfriend.y = 1056;
		
		oEnemy.x = 871;
		oEnemy.y = 1050;
		
		oGirlfriend.x = 1614;
		oGirlfriend.y = 1002;
		
		global.camWidth = 1456;
		global.camHeight = 819;
		
		offsetX = -40;
		
		bfOffsetX = 420;
		bfOffsetY = -80;
	}
	if (global.enemy = 102) {
		layer_set_visible(bgCodist, true);
		
		oEnemy.x = 992;
		
		offsetY = 150;
		offsetX = 100;
		
		bfOffsetX = -20;
		
		global.camWidth = 1152;
		global.camHeight = 648;
	}
}