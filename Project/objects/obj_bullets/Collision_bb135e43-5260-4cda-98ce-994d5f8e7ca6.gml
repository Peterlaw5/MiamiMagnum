if(!enemy){
	audio_play_sound(snd_enemy_dead_1,1,0);
	other.hp -= damage_enemy;
	other.hurt=true;
}