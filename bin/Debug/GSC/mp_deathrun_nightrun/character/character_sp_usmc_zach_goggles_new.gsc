main()
{
	self setModel("body_sp_usmc_zach");
	self attach("head_sp_usmc_zach_zach_body_goggles", "", true);
	self.voice = "american";
}

precache()
{
	precacheModel("body_sp_usmc_zach");
	precacheModel("head_sp_usmc_zach_zach_body_goggles");
}
