/// @desc Shoot
/// @arg dir_bullet

var current_dir = dir;
var dir_bullet=argument0;


with(weapon_id)
{
	var shoot_by_id = id;
	//Select the type of weapon and shoot
	if (cd <= 0)
	{
		if (ammo > 0)
		{
			with(instance_create_layer(x,y,layer,obj_bullet_fire))
			{
				scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
			}
			
			switch sprite_index
			{
				case spr_gun:
				{
					audio_play_sound(snd_gun,1,0);
					with(instance_create_layer(x,y,layer,obj_bullet_gun))
					{
						scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
					}
					var shoot_cd = gun_shoot_delay*room_speed;
					break;
				}
				case spr_machinegun:
				{	
					audio_play_sound(snd_smg,1,0);
					with(instance_create_layer(x,y,layer,obj_bullet_machinegun))
					{
						scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
					}
					if (dir_bullet == 90 || dir_bullet == 270)
					{
						with(instance_create_layer(x,y+sign(current_dir)*obj_bullet_machinegun.machinegun_second_delay,layer,obj_bullet_machinegun))
						{
							scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
						}
						with(instance_create_layer(x,y+sign(current_dir)*obj_bullet_machinegun.machinegun_third_delay,layer,obj_bullet_machinegun))
						{
							scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
						}
					}
					else
					{
						with(instance_create_layer(x+sign(current_dir)*obj_bullet_machinegun.machinegun_second_delay,y,layer,obj_bullet_machinegun))
						{
							scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
						}
						with(instance_create_layer(x+sign(current_dir)*obj_bullet_machinegun.machinegun_third_delay,y,layer,obj_bullet_machinegun))
						{
							scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
						}
					}
					var shoot_cd = machinegun_shoot_delay*room_speed;
					ammo -= 3;
					break;
				}
				case spr_shotgun:
				{
					audio_play_sound(snd_shotgun,1,0);
					with(instance_create_layer(x,y,layer,obj_bullet_shotgun))
					{
						scr_bullets_speed_and_direction(dir_bullet-rose,shoot_by_id);
					
					}
					with(instance_create_layer(x,y,layer,obj_bullet_shotgun))
					{
						scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
					}
					with(instance_create_layer(x,y,layer,obj_bullet_shotgun))
					{
						scr_bullets_speed_and_direction(dir_bullet+rose,shoot_by_id);
					}
					var shoot_cd = shotgun_shoot_delay*room_speed;
					ammo -= 1;
					break;
				}
				case spr_magnum:
				{
					audio_play_sound(snd_revolver,1,0);
					with(instance_create_layer(x,y,layer,obj_bullet_magnum))
					{
						scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
					}
					var shoot_cd = magnum_shoot_delay*room_speed;
					ammo -= 1;
					break;
				}
			}
			recoil = rinculo;
			cd = shoot_cd;
		}
	}
}

