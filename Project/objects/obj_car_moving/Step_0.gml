if(x<start_x||x>start_x+relative_x){
	hsp*=-1;	
}

if(place_meeting(x,y,obj_player)){
	if(obj_player.y<=y)obj_player.x+=hsp;
	else if((obj_player.x<=x-sprite_width&&hsp<0)||(obj_player.x>x&&hsp>0))obj_player.x+=hsp;
}

x+=hsp;
