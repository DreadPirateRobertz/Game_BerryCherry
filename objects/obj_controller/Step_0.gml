/// @description Game Logic

if(!instance_exists(obj_cherry) && instance_exists(obj_goal)){
	obj_goal.visible = true;
	audio_play_sound(snd_goal, 1, false);
}

if(!instance_exists(obj_goal)){
	global.game_state = states.winning;	
}