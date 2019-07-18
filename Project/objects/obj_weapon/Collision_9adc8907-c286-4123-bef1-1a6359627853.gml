if (instance_exists(user_id))
{
	if (ammo <= 0)
	{
		user_id.weapon_id = noone;
		instance_destroy();
	}
}
