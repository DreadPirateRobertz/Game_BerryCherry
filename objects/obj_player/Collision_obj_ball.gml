/// @description Player collides with a ball.
// Destroy player.

global.game_state = states.dead;
if(global.game_state == states.dead && alarm[0] == -1){
	alarm[0] = room_speed/2;	
}

