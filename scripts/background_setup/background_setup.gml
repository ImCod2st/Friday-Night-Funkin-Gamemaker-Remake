//setup the backgrounds depending on the enemy being fought
function background_setup(){
	// zoom the camera
	global.camWidth = 1280;
	global.camHeight = 720;
	
	// dad / everyone else
	if (global.stage = "stage") {
		if !(global.enemy = 102) && !(global.enemy = 103) { // exceptions for special enemys
			// make layers visible
			layer_set_visible(bgDad, true);
			layer_set_visible(bgDadFront, true);
			layer_set_visible(bgDadFrontmost, true);
		}
	}
	
	// spooky and monster
	if (global.stage = "spooky") {
		// make layers visible
		layer_set_visible(bgSpooky, true);
	
		// change the cameras offset
		if (global.enemy = 2) offsetY = 100;
		
		// zoom the camera
		global.camWidth = 1152;
		global.camHeight = 648;
	}
	
	// go pico
	if (global.stage = "pico") {
		// make layers visible
		layer_set_visible(bgPicoStreet, true);
		layer_set_visible(bgPicoObjects, true);
		layer_set_visible(bgPicoWindows, true);
		layer_set_visible(bgPicoCity, true);
		layer_set_visible(bgPicoSky, true);
	
		// parallax the background
		var camX = camera_get_view_x(view_camera[0]) ;
		layer_x(bgPicoCity, camX * 0.5);
		layer_x(bgPicoWindows, camX * 0.5);
		layer_x(bgPicoSky, camX * 0.99 - 200);
		
		// change the cameras offset
		offsetY = 100;
		offsetX = 100;
		
		// zoom the camera
		global.camWidth = 1152;
		global.camHeight = 648;
	}
	
	// mother
	if (global.stage = "limo") {
		// make layers visible
		layer_set_visible(bgMomBGLimo, true);
		layer_set_visible(bgMomGF, true);
		layer_set_visible(bgMomDancers, true);
		layer_set_visible(bgMomLimo, true);
		layer_set_visible(bgMomSunset, true);
		
		// apply parallax to the background
		var camX = camera_get_view_x(view_camera[0]) ;
		layer_x(bgMomBGLimo, camX * 0.5);
		layer_x(bgMomDancers, camX * 0.5);
		layer_x(bgMomSunset, camX * 0.97);
		
		// sync the dancers to the bpm of the current song
		// should probably be changed to avoid bugs
		var dancer1 = layer_sprite_get_id(bgMomDancers, "dancer1");
		var dancer2 = layer_sprite_get_id(bgMomDancers, "dancer2");
		var dancer3 = layer_sprite_get_id(bgMomDancers, "dancer3");
		var dancer4 = layer_sprite_get_id(bgMomDancers, "dancer4");
		var spd = (global.bpm / 60) / 2 * global.deltaMultiplier;
		layer_sprite_speed(dancer1, spd);
		layer_sprite_speed(dancer2, spd);
		layer_sprite_speed(dancer3, spd);
		layer_sprite_speed(dancer4, spd);
		
		// change the bf's position
		oBoyfriend.x = 1601;
		oBoyfriend.y = 700;
		
		// change the moms position
		oEnemy.x = 752;
		oEnemy.y = 948;
		
		// change the gf's position
		oGirlfriend.layer = bgMomGF;
		oGirlfriend.x = 1151;
		oGirlfriend.y = 886;
		
		// change the cameras offset
		offsetY = -180;
		bfOffsetY = -330;
		bfOffsetX = -20;
	}
	
	// parents
	if (global.stage = "mall") {
		// make layers visible
		layer_set_visible(bgChristSanta, true);
		layer_set_visible(bgChristFGSnow, true);
		layer_set_visible(bgChristBotBop, true);
		layer_set_visible(bgChristTree, true);
		layer_set_visible(bgChristUpBop, true);
		layer_set_visible(bgChristMain, true);
		
		// apply parallax to the background
		var camX = camera_get_view_x(view_camera[0]);
		layer_x(bgChristTree, (camX * 0.2));
		layer_x(bgChristUpBop, camX * 0.3);
		
		// sync the dancers to the bpm of the current song
		// should probably be changed to avoid bugs
		var dancer1 = layer_sprite_get_id(bgChristSanta, "santa");
		var dancer2 = layer_sprite_get_id(bgChristBotBop, "botbops");
		var dancer3 = layer_sprite_get_id(bgChristUpBop, "upbop");
		var spd = (global.bpm / 60) * global.deltaMultiplier;
		layer_sprite_speed(dancer2, spd);
		layer_sprite_speed(dancer3, spd);
		
		// change the bf's position
		oBoyfriend.x = 1920;
		oBoyfriend.y = 1056;
		
		// change the parents position
		oEnemy.x = 871;
		oEnemy.y = 1050;
		
		// change the gf's position
		oGirlfriend.x = 1614;
		oGirlfriend.y = 1002;
		
		// zoom the camera
		global.camWidth = 1456;
		global.camHeight = 819;
		
		// change the cameras offset
		offsetX = -40;
		
		bfOffsetX = 420;
		bfOffsetY = -40;
	}
	
	if (global.stage = "mallevil") {
		// make layers visible
		layer_set_visible(bgChristEvilSnow, true);
		layer_set_visible(bgChristEvilTree, true);
		layer_set_visible(bgChristEvilBG, true);
		
		// apply parallax to the background
		var camX = camera_get_view_x(view_camera[0]);
		layer_x(bgChristEvilTree, (camX * 0.9) - 640);
		layer_x(bgChristEvilBG, (camX * 0.9) - 640);
		
		// change the bf's position
		oBoyfriend.x = 1672;
		oBoyfriend.y = 1280;
		
		// change the parents position
		oEnemy.x = 840;
		oEnemy.y = 1280;
		
		// change the gf's position
		oGirlfriend.y = 1248;
		
		// change the cameras offset
		offsetY = 235;
		
		bfOffsetX = 230;
		bfOffsetY = 260;
		
		global.camWidth = 1120;
		global.camHeight = 630;
	}
	
	// senpai
	if (global.stage = "school") or (global.stage = "schoolgross") or (global.stage = "schoolevil") {
		if (global.stage != "schoolevil") {
			// make layers visible
			layer_set_visible(bgSenpaiFreaks, true);
			layer_set_visible(bgSenpaiStreet, true);
			layer_set_visible(bgSenpaiTrees, true);
			layer_set_visible(bgSenpaiSchool, true);
			layer_set_visible(bgSenpaiSky, true);
		
			var spd = (global.bpm / 60) * global.deltaMultiplier;
			var freaks = layer_sprite_get_id(bgSenpaiFreaks, "freaks");
			if (global.stage = "schoolgross") layer_sprite_change(freaks, sWeebFreaksScared);
			layer_sprite_speed(freaks, spd);
		} else {
			layer_set_visible(bgSpirit, true);
		}
		
		offsetY = 80;
		offsetX = 150;
		
		bfOffsetX = -15;
	}
	// spirit
	
	//tankman
	if (global.stage = "battlefield") {
		// make layers visible
		layer_set_visible(bgTankGround, true);
		layer_set_visible(bgTankSky, true);
		layer_set_visible(bgTankMountains, true);
		layer_set_visible(bgTankRuins, true);
		layer_set_visible(bgTankSmoke, true);
		layer_set_visible(bgTankTower, true);
		if (global.songName = "Stress") layer_set_visible(bgTankPico, true);
		
		// apply parallax to the background
		var camX = camera_get_view_x(view_camera[0]);
		layer_x(bgTankRuins, (camX * 0.3));
		layer_x(bgTankSmoke, (camX * 0.5));
		layer_x(bgTankTower, (camX * 0.55));
		layer_x(bgTankMountains, (camX * 0.6));
		layer_x(bgTankClouds, (camX * 0.7));
		layer_x(bgTankSky, (camX * 0.9) - 340);
		
		var spd = ((global.bpm / 60) / 2) * global.deltaMultiplier;
		var tower = layer_sprite_get_id(bgTankTower, "tower");
		layer_sprite_speed(tower, spd);
		
		// change the bf's position
		oBoyfriend.x = 1606;
		oBoyfriend.y = 1045;
		
		// change the parents position
		oEnemy.x = 900;
		oEnemy.y = 1051;
		
		offsetY = 135;
		bfOffsetY = 25;
		
		global.camWidth = 1280;
		global.camHeight = 720;
	}
	
	// stupid special codist week
	if (global.enemy = 102) {
		// make layers visible
		layer_set_visible(bgCodist, true);
		
		// move oxi
		oEnemy.x = 992;
		
		// zoom the camera
		global.camWidth = 1152;
		global.camHeight = 648;
		
		// change the cameras offset
		offsetY = 150;
		offsetX = 100;
	}
	
	// test
	if (global.enemy = 103) {
		// make layers visible
		layer_set_visible(bgTest, true);
		
		offsetY = 130;
		bfOffsetY = 25;
		
		// zoom the camera
		global.camWidth = 1152;
		global.camHeight = 648;
	}
}