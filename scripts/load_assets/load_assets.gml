// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_assets(){ 
	if (global.preload = true){ 
		title =  [sGirlfriendTitle, sTitle]; 
		menu = [sBackgroundFunk, sBackgroundFunkOther, sStoryMode, sStoryModeSelect, sFreeplay, sFreeplaySelect, sDonate, sDonateSelect, sOptions, sOptionsSelect]; 
		story =  [sBoyfriendOutline, sBoyfriendPeaceOutline, sGirlfriendOutline, sDaddyOutline, sSpookyOutline, sPicoOutline, sMomOutline, sParentsOutline , sSenpaiOutline, sTankmanOutline, sWeeks, sDifs]; 
		stage = [sStageBack, sStageFront]; 
		pico =[sPicoCity, sPicoSky, sPicoBehindTrain, sPicoStreet, sPicoWindows, sPicoTrain]; 
		limo = [sLimoBg, sLimoDrive, sLimoSunset, sDancer]; 
		mall = [sChristBgEscalator, sChristBgWalls, sChristBottomBop, sChristFgSnow, sChristFgSnow, sChristSanta, sChristUpperBop]; 
		if (room == rBoot){ 
			room_goto(rStart);
			sprite_flush_multi(all) sprite_prefetch_multi(title); 
			room_goto(Title); 
		} else {
			room_goto(rStart); 
			if (oFade.roomTo == MainMenu) sprite_flush_multi(all) sprite_prefetch_multi(menu); 
			if (oFade.roomTo == oStoryMenu) sprite_flush_multi(all) sprite_prefetch_multi(story); 
			room_goto(oFade.roomTo); 
			if (oFade.roomTo == MainGame){ 
				sprite_flush_multi(all); 
				boyfriend_sprites(); 
				sprite_prefetch_multi(global.bfload); 
				enemy_sprites(); 
				sprite_prefetch_multi(global.enemyload); 
				if (global.stage = "stage") sprite_prefetch_multi(stage);
				if (global.stage = "spooky") sprite_prefetch(sSpookyBG); 
				if (global.stage = "pico") sprite_prefetch_multi(pico); 
				if (global.stage = "limo") sprite_prefetch_multi(limo); 
				if (global.stage = "mall") sprite_prefetch_multi(mall); 
			} 	
		}
	} 
	else { 
		if (room == rBoot) room_goto(Title) else room_goto(oFade.roomTo); 
	}
}