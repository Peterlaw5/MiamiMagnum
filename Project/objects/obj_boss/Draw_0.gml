draw_self();
draw_health_boss = lerp(draw_health_boss, hp, 0.5);
draw_set_color(make_color_rgb(51,0,0));
draw_rectangle(30, 20, 600, 30, false);
//draw_set_color(make_color_rgb(140,0,0));
//draw_rectangle(x+2, y+7, x+123, y+16, false);
draw_set_color(c_red);
draw_rectangle(30, 20, 600*draw_health_boss/hp_max, 30, false);