state("bond", "v5.9.8")
{
	
}


init
{
	print("modules.First().ModuleMemorySize == " + "0x" + modules.First().ModuleMemorySize.ToString("X8"));

	if (modules.First().ModuleMemorySize == 0x1AA000) {
		version = "v5.9.8";
	}
}