singSprite = -1;
if (notePlaying = notes.left) singSprite = sprLeft;
if (notePlaying = notes.down) singSprite = sprDown;
if (notePlaying = notes.up) singSprite = sprUp;
if (notePlaying = notes.right) singSprite = sprRight;
if (missed) singSprite = asset_get_index(sprite_get_name(singSprite) + "Miss");

var singing = false;
if (keyboard_check(vk_left)) singing = true;
if (keyboard_check(vk_right)) singing = true;
if (keyboard_check(vk_down)) singing = true;
if (keyboard_check(vk_up)) singing = true;
if (singing) && (singSprite != -1) && !(global.dead)or (animCount > 0) && !(global.dead) {
	draw_sprite_ext(singSprite, singFrame, x, y, image_xscale, image_yscale, 0, c_white, 1);
} else {
	if (global.dead) draw_rectangle_color(0, 0, 10000, 10000, c_black, c_black, c_black, c_black, false);
	draw_self();
}