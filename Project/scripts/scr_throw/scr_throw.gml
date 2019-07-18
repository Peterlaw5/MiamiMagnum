/// @desc throw state
/// @arg sprite

//IF HAS CHANGED STATE
if(sprite_index!=argument0){
	if (obj_throw.cd <= 0)
	{
		if (obj_throw.ammo > 0)
		{
			//SET SPRITE (hide weapon)
			//instance_deactivate_object(weapon_id);
			throwing=true;
			sprite_index = argument0;
			
			//ACTION THROW
			var current_dir = dir;
			with(instance_create_layer(x,y-40 ,layer,obj_molotof))
			{
				if (current_dir >= 0)
				{
					vsp = lengthdir_y(throw_speed,45);
					hsp = lengthdir_x(throw_speed,45);
				}
				if (current_dir < 0)
				{
					vsp = lengthdir_y(throw_speed,135);
					hsp = lengthdir_x(throw_speed,135);
				}
				obj_throw.ammo -= 1;
				obj_throw.cd = throw_delay*room_speed;
			}
		}
	}	
}
if(image_index>=image_number-1){//end animation
	throwing=false;
	instance_activate_object(weapon_id);
}

