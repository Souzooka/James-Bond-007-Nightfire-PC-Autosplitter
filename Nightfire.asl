state("bond2", "v5.9.8")
{
	// for start
	string12 mapName : "amxmodx_mm.dll", 0xE37CE;

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

	settings.Add("m1", true, "Austria", "splits");
	settings.Add("m2", true, "Airfield", "splits");
	settings.Add("m3", true, "Japan", "splits");
	settings.Add("m4", true, "Infiltrate", "splits");
	settings.Add("m5", true, "Power", "splits");
	settings.Add("m6", true, "Escape", "splits");
	settings.Add("m7", true, "Island", "splits");
	settings.Add("m8", true, "Missile", "splits");
	settings.Add("m9", true, "Space", "splits");
}

init
{
	print("modules.First().ModuleMemorySize == " + "0x" + modules.First().ModuleMemorySize.ToString("X8"));

	if (modules.First().ModuleMemorySize == 0x03823000) {
		version = "v5.9.8";
	}
}

isLoading
{
	return current.loadingImg == "loading.png" && current.bondHP == 0 && current.bondPosY == 0;
}

start
{
	if (current.loadingImg == "loading.png" && current.mapName == "m1_austria01") {
		return true;
	}
}

split
{
	// true is taking the place of unimplemented settings
	switch ((string)current.movieName) {
		case "m1_outro":
			if (settings["m1"] && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "m2_outro":
			if (settings["m2"] && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "m3_outro":
			if (settings["m3"] && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "m4_outro":
			if (settings["m4"] && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "m5_outro":
			if (settings["m5"] && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "m6_outro":
			if (settings["m6"] && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "m7_outro":
			if (settings["m7"] && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "m8_outro":
			if (settings["m8"] && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "M9_OBJ_E":
			if (settings["m9"] && current.movieName != old.movieName) {
				return true;
			}
			break;
	}
}