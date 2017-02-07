state("bond2", "v5.9.8")
{
	bool isLoading : "engine.dll", 0x18BE0E8;
}


init
{
	print("modules.First().ModuleMemorySize == " + "0x" + modules.First().ModuleMemorySize.ToString("X8"));

}

isLoading
{
	return current.isLoading;
}

split
{
	return current.isLoading && !old.isLoading;
}