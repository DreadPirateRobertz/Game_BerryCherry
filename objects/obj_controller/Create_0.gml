/// @description Game controller

global.cherries = 0;
global.cherries_max = instance_number(obj_cherry);
global.startx = obj_player.x;
global.starty = obj_player.y;
lives = 3;
score = 0;
enum states {
	playing,
	dead,
	gameover,
	winning
};
global.game_state = states.playing;