x = camera_get_view_x(view_camera[0]) + xstart;

if !instance_exists(obj_player) exit;

#region Hp Bar
draw_health = lerp(draw_health, obj_player.hp, 0.5);
draw_set_color(make_color_rgb(51,0,0));
draw_rectangle(x+1, y+6, x+124, y+17, false);
draw_set_color(make_color_rgb(140,0,0));
draw_rectangle(x+2, y+7, x+123, y+16, false);
draw_set_color(c_red);
draw_rectangle(x+2, y+7, x+123*draw_health/obj_player.hp_max, y+16, false);

draw_sprite(spr_hud_hp, image_index, x + hearth_x_position, y + hearth_y_position);

#endregion

#region Cocaine Bar
draw_cocaine = lerp(draw_cocaine, obj_player.cocaine, 0.5);
draw_set_color(make_color_rgb(64,161,183));
draw_rectangle(x+1, y+24, x+124, y+32, false);
draw_set_color(make_color_rgb(160,160,160));
draw_rectangle(x+2, y+25, x+123, y+31, false);
draw_set_color(c_white);
draw_rectangle(x+2, y+25, x+123*draw_cocaine/obj_player.max_cocaine, y+31, false);

draw_sprite(spr_hud_cocaine, image_index, x + cocaine_x_position, y + cocaine_y_position);

#endregion

#region Molotof ammo
if (obj_throw.ammo == 3)
{
	draw_sprite(spr_hud_molotof, image_index, x + molotof_x_position1, y + molotof_y_position);
	draw_sprite(spr_hud_molotof, image_index, x + molotof_x_position2, y + molotof_y_position);
	draw_sprite(spr_hud_molotof, image_index, x + molotof_x_position3, y + molotof_y_position);
}
else if (obj_throw.ammo == 2)
{
	draw_sprite(spr_hud_molotof, image_index, x + molotof_x_position1, y + molotof_y_position);
	draw_sprite(spr_hud_molotof, image_index, x + molotof_x_position2, y + molotof_y_position);
}
else if (obj_throw.ammo == 1)
{
	draw_sprite(spr_hud_molotof, image_index, x + molotof_x_position1, y + molotof_y_position);
}
#endregion


if (obj_player.weapon_id != noone)
{
	if (obj_player.weapon_id.spr != noone)
	{
#region Weapon Equip
		switch (obj_player.weapon_id.spr)
		{
			case spr_gun:
			{
				draw_sprite(spr_hud_gun, image_index, x + weapon_x_position, y + weapon_y_position);
				break;
			}
			case spr_machinegun:
			{
				draw_sprite(spr_hud_machinegun, image_index, x + weapon_x_position, y + weapon_y_position);
				break;
			}
			case spr_shotgun:
			{
				draw_sprite(spr_hud_shotgun, image_index, x + weapon_x_position, y + weapon_y_position);
				break;
			}
			case spr_magnum:
			{
				draw_sprite(spr_hud_magnum, image_index, x + weapon_x_position, y + weapon_y_position);
				break;
			}
		}
#endregion

#region Ammo
draw_set_font(fnt_hud);
draw_set_color(c_black);
draw_text(x + ammo_x_position, y + ammo_y_position, obj_player.weapon_id.ammo);
#endregion
	}
}
