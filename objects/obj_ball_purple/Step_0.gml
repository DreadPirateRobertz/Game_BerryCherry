/// @description Move ball until it collides with a block, 
// then reverse direction.

if (global.game_state == states.playing) {
	y += spd * dir;

	if (place_meeting(x, y, obj_block)) {
		dir *= -1;
	}
}