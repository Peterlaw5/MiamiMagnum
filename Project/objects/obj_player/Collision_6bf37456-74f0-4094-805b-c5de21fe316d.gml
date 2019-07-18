switch(other.spr){
	case spr_cocktail:{
		hp=hp_max;
		audio_play_sound(snd_cocktail,1,0);
		instance_destroy(other);
		break;
	}
	case spr_donut:{
		hp+=hp*(other.curative_percentage/100);
		if(hp>hp_max)hp=hp_max;
		audio_play_sound(snd_donut,1,0);
		instance_destroy(other);
		break;
	}
}