/// @description Game Logic

if(!instance_exists(obj_cherry) && instance_exists(obj_goal)){
	obj_goal.visible = true;
	
}

if(!instance_exists(obj_goal)){
	global.game_state = states.winning;	
	audio_play_sound(snd_goal, 1, false);
}

if(global.game_state == states.winning){
	if(alarm[0] == -1){
		alarm[0]=3*room_speed;
	}

}