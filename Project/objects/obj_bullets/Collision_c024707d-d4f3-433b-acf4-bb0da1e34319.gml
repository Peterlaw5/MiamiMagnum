if (instance_exists(obj_player))
{
	if (shoot_by != obj_player.id.weapon_id)
	{
		if(!other.invulnerable){
			audio_play_sound(snd_damage,1,0);
			other.hp -= damage_player;
			other.hurt=true;
		}
	}
}
if(other.sprite_index!=spr_helicopter){
	instance_destroy();
}

