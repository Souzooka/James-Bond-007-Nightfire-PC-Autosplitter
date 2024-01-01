state("Bond")
{
	// for start
	string32 map : "engine.dll", 0x2C028, 0x4;;

	// for isLoading
	string11 loadingImg : "GUI.dll", 0x32A37;
	
	// check because loading logic is dumb
	// if players die in a level, the "loading.png" string stays in memory until the player hits a load or opens a menu
	// bondHP will underflow, but in case player takes exact damage check that elevation isn't 0 too
	uint bondHP : "engine.dll", 0x1B870C;
	float bondPosY : "engine.dll", 0x1B87F4;

	// for split
	string8 movieName : "client.dll", 0xB0D50
}

startup
{
	settings.Add("splits", true, "All Splits");

	settings.Add("m1_outro", true, "Austria", "splits");
	settings.Add("M2_OBJ9_", true, "Airfield", "splits");
	settings.Add("m3_outro", true, "Japan", "splits");
	settings.Add("m4_outro", true, "Infiltrate", "splits");
	settings.Add("m5_outro", true, "Power", "splits");
	settings.Add("m6_outro", true, "Escape", "splits");
	settings.Add("m7_outro", true, "Island", "splits");
	settings.Add("m8_outro", true, "Missile", "splits");
	settings.Add("M9_OBJ_E", true, "Space", "splits");

		vars.movieAdjust = new HashSet<string> {
		{"m1_outro"},
		{"M2_OBJ9_"},
		{"m3_outro"},
                {"m4_outro"},
		{"m5_outro"},
		{"m6_outro"},
		{"m7_outro"},
		{"m8_outro"}
	};
}

isLoading
{
	return current.loadingImg == "loading.png" && current.bondHP == 0 && current.bondPosY == 0 || current.loadingImg == "it" && current.bondHP == 0 && current.bondPosY == 0;
}

start
{
	if (current.loadingImg == "loading.png" && current.map == "/m1_austria01.bsp") {
		return true;
	}
}

split
{
    if(current.loadingImg != old.loadingImg) {
			if(current.bondHP == 0 && current.bondPosY == 0);
				if(vars.movieAdjust.Contains(current.movieName)){
					switch ((string)current.loadingImg){
						case "it":
						return settings[(current.movieName)];
					}
				}
				}



	if(old.movieName == "M9_OBJ_E" || current.movieName == "M9_OBJ_E");
			if(current.bondHP == 0 && current.bondPosY == 0);
				if(current.loadingImg == "er"){
		return settings["M9_OBJ_E"];
				}
}
