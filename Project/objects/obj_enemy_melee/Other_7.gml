/// @description Insert description here
// You can write your code in this editor


if (spr == spr_enemy_melee_death)
{
	obj_game_rules.destroy_score+=melee_score;
	audio_play_sound(snd_enemy_dead_2,1,0);
	instance_destroy();
}

if (sprite_index == spr_enemy_melee_attack)
{
	sprite_index=spr_enemy_melee_walk;
}