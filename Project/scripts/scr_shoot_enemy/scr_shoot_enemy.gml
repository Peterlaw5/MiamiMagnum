/// @desc Shoot
/// @arg dir_bullet
/// @arg x
/// @arg y

var current_dir = dir;
var dir_bullet=argument0;



	var shoot_by_id = id;
	//Select the type of weapon and shoot
	if (cd <= 0)
	{
		
			with(instance_create_layer(argument1,argument2,"Weapons",obj_bullet_fire))
			{
				scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
				enemy=true;
				bullet_speed=other.shot_speed;
			}
			
			switch object_index
			{
				case obj_enemy_ranged:
				{
					with(instance_create_layer(argument1,argument2,"Weapons",obj_bullet_gun))
					{
						scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
						enemy=true;
						bullet_speed=other.shot_speed;
					}
					var shoot_cd = gun_shoot_delay*room_speed;
					break;
				}
				case obj_enemy_machinegun:
				{	
					with(instance_create_layer(argument1,argument2,"Weapons",obj_bullet_machinegun))
					{
						scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
						enemy=true;
						bullet_speed=other.shot_speed;
					}
					if (dir_bullet == 90 || dir_bullet == 270)
					{
						with(instance_create_layer(argument1,argument2+sign(current_dir)*obj_bullet_machinegun.machinegun_second_delay,"Weapons",obj_bullet_machinegun))
						{
							scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
							enemy=true;
							bullet_speed=other.shot_speed;
						}
						with(instance_create_layer(argument1,argument2+sign(current_dir)*obj_bullet_machinegun.machinegun_third_delay,"Weapons",obj_bullet_machinegun))
						{
							scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
							enemy=true;
							bullet_speed=other.shot_speed;
						}
					}
					else
					{
						with(instance_create_layer(argument1+sign(current_dir)*obj_bullet_machinegun.machinegun_second_delay,argument2,"Weapons",obj_bullet_machinegun))
						{
							scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
							enemy=true;
							bullet_speed=other.shot_speed;
						}
						with(instance_create_layer(argument1+sign(current_dir)*obj_bullet_machinegun.machinegun_third_delay,argument2,"Weapons",obj_bullet_machinegun))
						{
							scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
							enemy=true;
							bullet_speed=other.shot_speed;
						}
					}
					var shoot_cd = machinegun_shoot_delay*room_speed;
					
					break;
				}
				case obj_enemy_shotgun:
				{
					with(instance_create_layer(argument1,argument2,"Weapons",obj_bullet_shotgun))
					{
						scr_bullets_speed_and_direction(dir_bullet-rose,shoot_by_id);
						enemy=true;
						bullet_speed=other.shot_speed;
						cd_morte=other.shotgun_shot_death;
					
					}
					with(instance_create_layer(argument1,argument2,"Weapons",obj_bullet_shotgun))
					{
						scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
						enemy=true;
						bullet_speed=other.shot_speed;
						cd_morte=other.shotgun_shot_death;
					}
					with(instance_create_layer(argument1,argument2,"Weapons",obj_bullet_shotgun))
					{
						scr_bullets_speed_and_direction(dir_bullet+rose,shoot_by_id);
						enemy=true;
						bullet_speed=other.shot_speed;
						cd_morte=other.shotgun_shot_death;
					}
					var shoot_cd = shotgun_shoot_delay*room_speed;
					
					break;
				}
				case obj_enemy_magnum:
				{
					with(instance_create_layer(argument1,argument2,"Weapons",obj_bullet_magnum))
					{
						scr_bullets_speed_and_direction(dir_bullet,shoot_by_id);
						enemy=true;
						bullet_speed=other.shot_speed;
					}
					var shoot_cd = magnum_shoot_delay*room_speed;
					
					break;
				}
			}
			recoil = rinculo;
			cd = shoot_cd;
		
	}


