if(follow_path==true)
{
	path_start(path_helicopterDummy, 6, path_action_stop, false);
	follow_path=false;
	//tml_cutsceneHelicopter1.timeline_running=false;
}

if(follow_path2==true)
{
	path_start(path_helicopterDummy, 4, path_action_continue, false);
	follow_path2=false;
}
