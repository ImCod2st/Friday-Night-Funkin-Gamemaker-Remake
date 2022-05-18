// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_sprites(){ 
	sprEnemy[0] = "sGirlfriend";
sprEnemy[1] = "sDad";
sprEnemy[2] = "sSpooky";
sprEnemy[3] = "sMonster";
sprEnemy[4] = "sPico";
sprEnemy[5] = "sMom";
sprEnemy[6] = "sCParentsDad";
sprEnemy[7] = "sMonsterChrist";
sprEnemy[8] = "sSenpai";
sprEnemy[9] = "sSenpaiMad";
sprEnemy[10] = "sSpirit";
sprEnemy[11] = "sTankman";
sprEnemy[100] = "sWhitty";
sprEnemy[101] = "sWhittyC";
sprEnemy[102] = "sOxi";
sprEnemy[103] = "sBoyfriendPixel"; 

var sprChosen = sprEnemy[global.enemy];
sprIdle = asset_get_index(sprChosen + "Idle");
sprLeft = asset_get_index(sprChosen + "Left");
sprDown = asset_get_index(sprChosen + "Down");
sprUp = asset_get_index(sprChosen + "Up");
sprRight = asset_get_index(sprChosen + "Right"); 
global.enemyload = [sprIdle, sprLeft, sprDown, sprUp, sprRight];
}