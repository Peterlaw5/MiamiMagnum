/// @description SET FLYING MOVIMENTS
var endSprite=dir*10;
var movement=dir*move_speed;
if(position_meeting(x+endSprite+movement,y-1,obj_obstacle)){
	while(!position_meeting(x+endSprite,y-1,obj_obstacle)){
		x+=sign(movement);			
	}
	movement=0;
}
x += movement;
image_xscale=dir;
//scr_walk(spr);