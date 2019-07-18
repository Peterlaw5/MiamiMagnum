/// @desc SET OFFSET


if(instance_exists(user_id))
{
	if (ammo > 0)
	{
		if (user_id.state == scr_idle && !user_id.up && !user_id.throwing)
		{
			index_i_sprite = 0;
		}
		else if (user_id.state == scr_walk && !user_id.up)
		{
			index_i_sprite = 1;
		}
		else if (user_id.sprite_index == spr_player_duck || user_id.sprite_index == spr_player_duck_shoot)
		{
			index_i_sprite = 2;
		}
		else if (user_id.sprite_index == spr_player_jump || user_id.sprite_index == spr_player_jump_shoot)
		{
			index_i_sprite = 3;
		}
		else if (user_id.sprite_index == spr_player_fall || user_id.sprite_index == spr_player_fall_shoot)
		{
			index_i_sprite = 4;
		}
		else if (user_id.up && (user_id.state == scr_idle || user_id.state == scr_jump || user_id.state == scr_fall))//(user_id.sprite_index == spr_player_aim_up)
		{
			index_i_sprite = 5;
		}
		else if (user_id && user_id.state == scr_walk)
		{
			index_i_sprite = 6;
		}
		else if (user_id.sprite_index = spr_player_aim_down)
		{
			index_i_sprite = 7;	
		}
		else if (user_id.sprite_index == spr_player_death)
		{
			index_i_sprite = 8;
		}
		else
		{
			x = room_width + sprite_width;
			y = room_height - sprite_height;
		}
		
		var index = abs(floor(user_id.image_index));
		if (sprite_index == spr_gun) y = user_id.y + y_gun_offsets[index, index_i_sprite];
		else if (sprite_index == spr_shotgun) y = user_id.y + y_shotgun_offsets[index, index_i_sprite];
		else if (sprite_index == spr_machinegun) y = user_id.y + y_machinegun_offsets[index, index_i_sprite];
		else if (sprite_index == spr_magnum) y = user_id.y + y_magnum_offsets[index, index_i_sprite];
		
		if(user_id.dir > 0)
		{
			if (sprite_index == spr_gun) x = user_id.x + x_gun_offset[0,index_i_sprite];
			else if (sprite_index == spr_shotgun) x = user_id.x + x_shotgun_offset[0,index_i_sprite];
			else if (sprite_index == spr_machinegun) x = user_id.x + x_machinegun_offset[0,index_i_sprite];
			else if (sprite_index == spr_magnum) x = user_id.x + x_magnum_offset[0,index_i_sprite];
		}
		else 
		{
			if (sprite_index == spr_gun) x = user_id.x - x_gun_offset[0,index_i_sprite];
			else if (sprite_index == spr_shotgun) x = user_id.x - x_shotgun_offset[0,index_i_sprite];
			else if (sprite_index == spr_machinegun) x = user_id.x - x_machinegun_offset[0,index_i_sprite];
			else if (sprite_index == spr_magnum) x = user_id.x - x_magnum_offset[0,index_i_sprite];	
		}
		
		image_xscale = user_id.dir;
	}
}
