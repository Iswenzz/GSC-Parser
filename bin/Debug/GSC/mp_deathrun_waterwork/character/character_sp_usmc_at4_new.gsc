main()
{
	self setModel("body_sp_usmc_at4");
	self attach("head_sp_usmc_james_james_body", "", true);
	self.voice = "american";
}

precache()
{
	precacheModel("body_sp_usmc_at4");
	precacheModel("head_sp_usmc_james_james_body");
}
