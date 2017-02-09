state("bond2", "v5.9.8")
{
	string11 loadingImg : "GUI.dll", 0x32A37;
	// Note: bondHP changes to 0xFFFFFFFF when dying in game, not to 0.
	uint bondHP : "engine.dll", 0x1B870C;

	string12 mapName : "amxmodx_mm.dll", 0xE37CE;
	bool hasGameStarted : "item_helicopter_amxx.dll", 0x26FB0;

	string8 movieName : "client.dll", 0xB0D50
}


init
{
	print("modules.First().ModuleMemorySize == " + "0x" + modules.First().ModuleMemorySize.ToString("X8"));

	vars.startLoadingCheck = true;
}

update
{
	print(vars.startLoadingCheck.ToString());
}

isLoading
{
	return current.loadingImg == "loading.png" && current.bondHP == 0;
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
			if (true && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "m2_outro":
			if (true && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "m3_outro":
			if (true && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "m4_outro":
			if (true && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "m5_outro":
			if (true && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "m6_outro":
			if (true && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "m7_outro":
			if (true && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "m8_outro":
			if (true && current.movieName != old.movieName) {
				return true;
			}
			break;
		case "M9_OBJ_E":
			if (true && current.movieName != old.movieName) {
				return true;
			}
			break;
	}
}