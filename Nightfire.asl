state("bond2", "v5.9.8")
{
	bool isLoading : "engine.dll", 0x18BE0E8;
	string2 mapName : "engine.dll", 0x1B7AB0C;
}


init
{
	print("modules.First().ModuleMemorySize == " + "0x" + modules.First().ModuleMemorySize.ToString("X8"));

}

isLoading
{
	return current.isLoading;
}

start
{
	return current.mapName != old.mapName && current.mapName == "m1";
}

split
{
	return current.mapName != old.mapName && current.mapName != "";
}