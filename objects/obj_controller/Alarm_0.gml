/// @description Next Room

	if(room_exists(room_next(room))){
		room_goto_next();
		global.game_state = states.playing;
		counter = 0;
	}