/// @description ANIMATION END
// You can write your code in this editor

if (spr==spr_enemy_machinegun_death||spr==spr_enemy_revolver_death||spr==spr_enemy_shotgun_death)
{
	with(instance_create_layer(x+(-dir*10),y-15,"Weapons",obj_weapon)){
		switch(other.object_index){
			case obj_enemy_machinegun:	{obj_game_rules.destroy_score+=other.machinegun_score; spr=spr_machinegun;break;}
			case obj_enemy_shotgun	 :	{obj_game_rules.destroy_score+=other.shotgun_score; spr=spr_shotgun;break;}
			case obj_enemy_magnum	 :	{obj_game_rules.destroy_score+=other.magnum_score; spr=spr_magnum;break;}
		}
		
	}
	instance_destroy();
}

if(spr==spr_enemy_ranged_gun_death){
	obj_game_rules.destroy_score+=gunner_score;
	audio_play_sound(snd_enemy_dead_2,1,0);
	instance_destroy();	
}

