if(sprite_index==spr_player_melee){
	other.hp-=5;	
	audio_play_sound(snd_punch,1,0);
	if(other.hp<=0){
		obj_game_rules.destroy_score+=5;	
	}
}