/// @description PICK UP WEAPON
if(state==scr_duck&&other.id!=weapon_id){
	instance_destroy(weapon_id);
	audio_play_sound(snd_weapon_grab,1,0);
	other.user_id=id;
	weapon_id=other.id;
	weapon_id.giveammo = true;
	with (weapon_id)
	{
		event_user(1);
	}
}
