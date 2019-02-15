main()
{
	
	thread speedrun\_way_name::create_normal_way("Normal Way;");
	auto_spawn = getEntArray("mp_jumper_spawn", "classname");
	if(auto_spawn.size > 0)
		thread speedrun\_way_name::create_spawn_auto(auto_spawn[int(auto_spawn.size / 2)].origin, auto_spawn[int(auto_spawn.size / 2)].angles[1]);
        thread teleport();

        maps\mp\_load::main();
        maps\mp\mp_deathrun_city_script::main();	
        maps\mp\mp_deathrun_city_door::main();

//AUTO //AUTO     ambientPlay("city_music");
	
	game["allies"] = "sas";
	game["axis"] = "opfor";
	game["attackers"] = "axis";
	game["defenders"] = "allies";
	game["allies_soldiertype"] = "woodland";
	game["axis_soldiertype"] = "woodland";
	
	setdvar( "r_specularcolorscale", "1" );
	
	setdvar("r_glowbloomintensity0",".25");
	setdvar("r_glowbloomintensity1",".25");
	setdvar("r_glowskybleedintensity0",".3");
	setdvar("compassmaxrange","1800");

        level.trapTriggers = [];
        level.trapTriggers[level.trapTriggers.size] = getEnt( "t1", "targetname" );
        level.trapTriggers[level.trapTriggers.size] = getEnt( "t2", "targetname" );
        level.trapTriggers[level.trapTriggers.size] = getEnt( "t3", "targetname" );
        level.trapTriggers[level.trapTriggers.size] = getEnt( "t4", "targetname" );
        level.trapTriggers[level.trapTriggers.size] = getEnt( "t5", "targetname" );
        level.trapTriggers[level.trapTriggers.size] = getEnt( "t6", "targetname" );
        level.trapTriggers[level.trapTriggers.size] = getEnt( "t7", "targetname" );
        level.trapTriggers[level.trapTriggers.size] = getEnt( "t8", "targetname" );
        level.trapTriggers[level.trapTriggers.size] = getEnt( "t9", "targetname" );
}

teleport()
{
	entTransporter = getentarray( "enter", "targetname" );
 
	if(isdefined(entTransporter))
	{
		for( i = 0; i < entTransporter.size; i++ )
			entTransporter[i] thread transporter();
	}
}

transporter()
{
	while(true)
	{
		self waittill( "trigger", player );
		entTarget = getEnt( self.target, "targetname" );
//AUTO 		wait 0.1;
		player setOrigin( entTarget.origin );
		player setplayerangles( entTarget.angles );
//AUTO 		wait 0.1;
	}
}

