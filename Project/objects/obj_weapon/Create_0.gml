cd = 0;
machine_delay = 0;
sprite_index = spr;
vsp = 0;
hsp = 0;
rotate = 0;
ammo = 999;
on_throw = true;
recoil = 0;
index_i_sprite = 0;
giveammo = false;

if (spr == spr_machinegun)
	{
		ammo = ammo_machinegun;
	}
	else if (spr == spr_shotgun)
	{
		ammo = ammo_shotgun;
	}
	else if (spr == spr_magnum)
	{
		ammo = ammo_magnum;	
	}
