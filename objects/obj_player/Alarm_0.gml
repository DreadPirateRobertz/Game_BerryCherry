/// @description Respawn Player code
if(lives > 1){
	lives--;
	global.game_state = states.playing;
	x = global.startx;
	y = global.starty;
} else {
	global.game_state = states.gameover;
	instance_destroy();
}