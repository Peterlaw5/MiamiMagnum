var i = 0;
repeat(buttons)
{
	font_VHS_menu=font_add("vhs.ttf",20,true,0,32,128);
	draw_set_font(font_VHS_menu);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	
	if(menu_index == i)
	{
		if (room != rm_start_screen && room != rm_game_over) draw_sprite(spr_hud_gun,image_index,menu_x-147,menu_y + 15 + button_h * i);
		else if (room == rm_game_over) draw_sprite(spr_hud_gun,image_index,menu_x-165,menu_y + 15 + button_h * i);
		else draw_sprite(spr_hud_gun,image_index,menu_x-130,menu_y + 15 + button_h * i);
		draw_set_color(make_color_rgb(0,122,185));
	}
	
	draw_text(argument0, argument1 + button_h * i, button[i]);

	i ++;
}