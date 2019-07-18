/// @desc idle state
/// @arg sprite
if(sprite_index!=argument0&&!throwing){
	sprite_index = argument0;
	image_speed=1;
	image_alpha=1;
}
if(vsp==0&&!position_meeting(x,y+1,obj_obstacles_parent))scr_fall(sprite_index);