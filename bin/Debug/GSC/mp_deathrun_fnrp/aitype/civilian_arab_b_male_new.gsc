main()
{
	self.animTree = "";
	self.team = "neutral";
	self.type = "human";
	self.accuracy = 0.2;
	self.health = 150;
	self.weapon = "ak47";
	self.secondaryweapon = "beretta";
	self.sidearm = "colt45";
	self.grenadeWeapon = "fraggrenade";
	self.grenadeAmmo = 0;

	self setEngagementMinDist( 256.000000, 0.000000 );
	self setEngagementMaxDist( 768.000000, 1024.000000 );

	character\character_arab_civilian_b::main();
}

spawner()
{
	self setspawnerteam("neutral");
}

precache()
{
	character\character_arab_civilian_b::precache();

	precacheItem("ak47");
	precacheItem("beretta");
	precacheItem("colt45");
	precacheItem("fraggrenade");
}

