/// @description Next Room or Game END
if(global.game_state == states.winning){
	if(room_exists(room_next(room))){
		room_goto_next();
		global.game_state = states.playing;
		counter = 0;
	}
}
else {
	game_end();
}