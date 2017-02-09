state("bond2", "v5.9.8")
{
	bool isLoading : "engine.dll", 0x18BE0E8;
	string2 mapName : "engine.dll", 0x1B7AB0C;
	bool hasGameStarted : "item_helicopter_amxx.dll", 0x26FB0;

	string8 movieName : "client.dll", 0xB0D50
}


init
{
	print("modules.First().ModuleMemorySize == " + "0x" + modules.First().ModuleMemorySize.ToString("X8"));

}

update
{
	print (current.movieName);
}

isLoading
{
	return current.isLoading;
}

start
{
	return current.hasGameStarted == true && old.hasGameStarted == false;
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