if(flicker_cd>=0&&flicker_cd<=3){
	image_alpha=0.2;
}
if(flicker_cd>3&&flicker_cd<=6){
	image_alpha=1;	
}
if(flicker_cd>6){
	flicker_cd=0;	
}
flicker_cd++;