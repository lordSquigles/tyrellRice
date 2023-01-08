//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
  //{" ", "checkVPN.sh", 10, 0},

  {" ", "networkTraffic.sh", 1, 0},

  {" ", "cpuUsage.sh", 1, 0},

	{" ", "memUsage.sh",	1, 0},

  {" ", "diskSpace.sh", 0, 0},

	{" ", "date '+%d/%m/%y'", 86400, 0},

  {" ", "date '+%I:%M%p'", 5, 0},

  //{"", "battery.sh", 60, 0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
