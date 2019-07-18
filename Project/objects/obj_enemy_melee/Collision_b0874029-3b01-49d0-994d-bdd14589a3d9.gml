if(!other.invulnerable&&!attacked)
{
	audio_play_sound(snd_machete,1,0);
	other.hp-=melee_damage;
	other.invulnerable=true;
	spr = spr_enemy_melee_attack;


}

