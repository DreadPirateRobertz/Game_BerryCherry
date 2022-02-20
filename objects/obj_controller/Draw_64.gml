/// @description Draw Static Elements

//Draw Score
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_score);
	draw_set_color(c_yellow);
	draw_text(10, 20, string(score));	
	
//Draw Cherries
if (instance_exists(obj_cherry)) {
	var x_cherry = 30;
	repeat(instance_number(obj_cherry)) {
		draw_sprite_ext(spr_cherry, 0,30 + x_cherry, 2, .5, .5, 0, c_white, 1); 
		x_cherry += 30
	}
}

// Player health.
if (instance_exists(obj_player)) {
	var xhp = 30;
	repeat(lives) {
		draw_sprite(spr_life, 0, room_width-xhp, 5);
		xhp += 30
	}
}
	//Game Over
	else if(global.game_state == states.gameover){
		draw_set_color(c_green);
		draw_set_font(fnt_gameover);
		draw_text(room_width/2-100, room_height/2-100, "GAME OVER");	
}

//Winning
if(global.game_state ==states.winning){
		draw_set_color(c_purple);
		draw_set_font(fnt_gameover);
		draw_text(room_width/2-80, room_height/2-100, "YOU WIN");
		}
