//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/

	{"", "weather",			3600,	0},
	{"", "disk",			  3600,	0},
	{"", "cpuavg",			6,		0},
	{"", "memory",			6,		0},
	{"", "volume",			0,		10},
	{"", "clock",			  15,		0},
	{"", "internet",		15,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
