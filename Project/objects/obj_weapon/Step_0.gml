cd -= 1;
sprite_index = spr;

if(giveammo)
{
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
}


//Set offset position
if(instance_exists(user_id)&&user_id.sprite_index==spr_helicopter){
	x=obj_player.x+40;
	y=obj_player.y-6;
}else{
	event_user(0);
}



//Throw weapon away
if (ammo <= 0)
{
	if (on_throw)
	{	
		//user_id.weapon_id = noone;
		on_throw = false;
		vspeed = -throw_high;
	
		if (user_id.dir < 0)
		{
			vsp = lengthdir_y(throw_speed,45);
			hsp = lengthdir_x(throw_speed,45)-2;
		}
		else if (user_id.dir >= 0)
		{
			vsp = lengthdir_y(throw_speed,135);
			hsp = lengthdir_x(throw_speed,135);
		}
		//user_id=noone;
	}
	
vsp += throw_length;
x += hsp;
y += vsp;
image_angle = lerp(1,360,rotate);
rotate += rotation;

//alarm[0] = 45;
}

recoil = max(0,recoil - 1);

//RINCULO
x = x - lengthdir_x(recoil, image_angle); //avrei anche potuto mettere image_angle + 180
y = y - lengthdir_y(recoil, image_angle);