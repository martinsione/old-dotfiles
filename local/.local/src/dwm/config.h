/* See LICENSE file for copyright and license details. */
#define TERMINAL "$TERMINAL"

/* Appearance */
static const unsigned int borderpx  = 2;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const unsigned int gappih    = 5;       /* horiz inner gap between windows */
static const unsigned int gappiv    = 5;       /* vert inner gap between windows */
static const unsigned int gappoh    = 10;       /* horiz outer gap between windows and screen edge */
static const unsigned int gappov    = 10;       /* vert outer gap between windows and screen edge */
static int smartgaps                = 0;        /* 1 means no outer gap when there is only one window */
static const int swallowfloating    = 0;        /* 1 means swallow floating windows by default */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */

// Fonts
/* static const char *fonts[]          = {"UbuntuMono Nerd Font:size=12:antialias=true:autohint:true", "fontawesome:size=8", "JoyPixels:size=8:antialias=true:autohint=true"}; */
static const char *fonts[]          = {"UbuntuMono:size=12:antialias=true:autohint:true", "JoyPixels:size=8:antialias=true:autohint=true"};
static const char dmenufont[]       = "UbuntuMono Nerd Font:size=12:antialias=true:autohint:true";

// Opacity
static const unsigned int baralpha = 0xc0;
static const unsigned int borderalpha = OPAQUE;

// Colorscheme
static const char col_gray1[]       = "#202020";
static const char col_gray2[]       = "#222222";
static const char col_gray3[]       = "#eeeeee";
static const char col_gray4[]       = "#eeeeee";
static const char col_cyan[]        = "#005577";
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_gray4, col_cyan,  col_cyan  },
};
static const unsigned int alphas[][3]      = {
	/*               fg      bg        border     */
	[SchemeNorm] = { OPAQUE, baralpha, borderalpha },
	[SchemeSel]  = { OPAQUE, baralpha, borderalpha },
};


/* tagging */
/* static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" }; */
static const char *tags[] = { "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   " };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class			instance  title           tags mask  isfloating  isterminal  noswallow  monitor */
	{ "Brave-browser",	NULL,     NULL,           1 << 1,		0,          0,          -1,        -1 },
	{ "zoom",			NULL,     NULL,           1 << 2,		1,          0,           0,        -1 },
	{ "Thunderbird",	NULL,     NULL,           1 << 4,		0,          0,          -1,        -1 },
	{ "Gimp",			NULL,     NULL,           1 << 5,		1,          0,           0,        -1 },
	{ "discord",		NULL,     NULL,           1 << 7,		0,          0,          -1,        -1 },
	{ "steam",			NULL,     NULL,           1 << 8,		0,          0,          -1,        -1 },
	{ "St",				NULL,     NULL,           0,			0,          1,           0,        -1 },
	{ "Alacritty",		NULL,     NULL,           0,			0,          1,           0,        -1 },
	{ NULL,				NULL,     "Event Tester", 0,			0,          0,           1,        -1 }, /* xev */
};

/* layout(s) */
static const float mfact     = 0.50; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */

#define FORCE_VSPLIT 1  /* nrowgrid layout: force two clients to always split vertically */
#include "vanitygaps.c"

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "[M]",      monocle },
	{ "[@]",      spiral },
	{ "[\\]",     dwindle },
	{ "H[]",      deck },
	{ "TTT",      bstack },
	{ "===",      bstackhoriz },
	{ "HHH",      grid },
	{ "###",      nrowgrid },
	{ "---",      horizgrid },
	{ ":::",      gaplessgrid },
	{ "|M|",      centeredmaster },
	{ ">M>",      centeredfloatingmaster },
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ NULL,       NULL },

    // Esthetic layouts
	/* { "|  tile  |",      tile },    /1* first entry is default *1/ */
	/* { "|  monocle  |",      monocle }, */
	/* { "|  spiral  |",      spiral }, */
	/* { "|  dwindle  |",     dwindle }, */
	/* { "|  deck  |",      deck }, */
	/* { "|  bstack  |",      bstack }, */
	/* { "|  bstackh  |",      bstackhoriz }, */
	/* { "|  grid  |",      grid }, */
	/* { "|  rgrid  |",      nrowgrid }, */
	/* { "|  hgrid  |",      horizgrid }, */
	/* { "|  ggrid  |",      gaplessgrid }, */
	/* { "|  cmaster  |",      centeredmaster }, */
	/* { "|  cfmaster  |",      centeredfloatingmaster }, */
	/* { "|  floating  |",      NULL },    /1* no layout function means floating behavior *1/ */
	/* { NULL,       NULL }, */
};

/* key definitions */
#define MODKEY Mod1Mask
#define TAGKEYS(KEY,TAG) \
	{ ControlMask,                  KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|Mod4Mask,				KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,			KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* Include Audio controls */
#include <X11/XF86keysym.h>

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray4, NULL };
static const char *discord[] = { "discord", NULL };

static Key keys[] = {
	/* modifier                     key        function        argument */

	//-------------------------- Defaults ------------------------------

	// Move around windows
	{ ControlMask,                  XK_j,      focusstack,     {.i = +1 } },
	{ ControlMask,                  XK_k,      focusstack,     {.i = -1 } },

	// Change how windows are displayed
	{ MODKEY|ShiftMask,             XK_i,      incnmaster,     {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_o,      incnmaster,     {.i = -1 } },

	// Change windows X size
	{ MODKEY|ControlMask,           XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY|ControlMask,           XK_l,      setmfact,       {.f = +0.05} },

	// Change windows Y size
	{ MODKEY|ControlMask,           XK_j,      setcfact,       {.f = +0.25} },
	{ MODKEY|ControlMask,           XK_k,      setcfact,       {.f = -0.25} },
	{ MODKEY|ControlMask,           XK_o,      setcfact,       {.f =  0.00} },

	// Toggle status bar
	{ MODKEY,                       XK_f,      togglebar,      {0} },

	// Toggle client to master place
	{ MODKEY,                       XK_space,  zoom,           {0} },

	// Go to last used workspace
	{ MODKEY,                       XK_Tab,    view,           {0} },

	// Kill a client
	{ ControlMask,					XK_q,      killclient,     {0} },

	// Exit dwm
	{ MODKEY|ControlMask,			XK_q,      quit,           {0} },

	// Screenshot
	{ 0,							XK_Print,  spawn,	 	   SHCMD("maim -i $(xdotool getactivewindow) | xclip -selection clipboard -t image/png") },
	{ ShiftMask,					XK_Print,  spawn,	 	   SHCMD("maim ~/img/$(date '+%y%m%d-%H%M-%S').png") },


	//-------------------------- Layouts -------------------------------
	/* { MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} }, */
	/* { MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} }, */
	/* { MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} }, */

	// Toggle layout / toggle floating
	{ MODKEY|ShiftMask,			    XK_space,  setlayout,      {0} },
	{ MODKEY|ControlMask,			XK_space,  togglefloating, {0} },

	// Toggle fullscreen
	{ ControlMask,					XK_f,      togglefullscr,  {0} },

	// View tags
	{ ControlMask,                       XK_0,      view,           {.ui = ~0 } },
	/* { MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } }, */

	// Multiple monitors
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },



	//-------------------------- Tags ----------------------------------
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)


	//-------------------------- Gaps ----------------------------------

	{ Mod1Mask,						XK_0,      togglegaps,     {0} },
	/* { MODKEY|Mod4Mask,              XK_u,      incrgaps,       {.i = +1 } }, */
	/* { MODKEY|Mod4Mask|ShiftMask,    XK_u,      incrgaps,       {.i = -1 } }, */
	/* { MODKEY|Mod4Mask,              XK_i,      incrigaps,      {.i = +1 } }, */
	/* { MODKEY|Mod4Mask|ShiftMask,    XK_i,      incrigaps,      {.i = -1 } }, */
	/* { MODKEY|Mod4Mask,              XK_o,      incrogaps,      {.i = +1 } }, */
	/* { MODKEY|Mod4Mask|ShiftMask,    XK_o,      incrogaps,      {.i = -1 } }, */
	/* { MODKEY|Mod4Mask,              XK_6,      incrihgaps,     {.i = +1 } }, */
	/* { MODKEY|Mod4Mask|ShiftMask,    XK_6,      incrihgaps,     {.i = -1 } }, */
	/* { MODKEY|Mod4Mask,              XK_7,      incrivgaps,     {.i = +1 } }, */
	/* { MODKEY|Mod4Mask|ShiftMask,    XK_7,      incrivgaps,     {.i = -1 } }, */
	/* { MODKEY|Mod4Mask,              XK_8,      incrohgaps,     {.i = +1 } }, */
	/* { MODKEY|Mod4Mask|ShiftMask,    XK_8,      incrohgaps,     {.i = -1 } }, */
	/* { MODKEY|Mod4Mask,              XK_9,      incrovgaps,     {.i = +1 } }, */
	/* { MODKEY|Mod4Mask|ShiftMask,    XK_9,      incrovgaps,     {.i = -1 } }, */
	/* { MODKEY|Mod4Mask|ShiftMask,    XK_0,      defaultgaps,    {0} }, */


	//-------------------------- Apps ----------------------------------

	// Ctrl + Key
	{ ControlMask,					XK_Return, spawn,	 	   SHCMD("$TERMINAL") },
	{ ControlMask,                  XK_p,      spawn,	 	   SHCMD(TERMINAL " -e $FILE") },

	// Alt + Key
	{ MODKEY,                       XK_p, 	   spawn,		   {.v = dmenucmd } },
	{ MODKEY,                       XK_d, 	   spawn,		   {.v = discord } },
	{ MODKEY,                       XK_w,      spawn,	 	   SHCMD("$BROWSER") },
	{ MODKEY,                       XK_e,      spawn,	 	   SHCMD("$GUIFILE") },
	{ MODKEY,                       XK_m,      spawn,	 	   SHCMD("$MAIL") },

	// Ctrl + Alt + Key
	{ MODKEY|ControlMask,			XK_p,      spawn,	 	   SHCMD("pavucontrol") },
	{ MODKEY|ControlMask,			XK_r ,     spawn,	 	   SHCMD(TERMINAL " -e htop") },
	{ MODKEY|ControlMask,			XK_e,      spawn,	 	   SHCMD(TERMINAL " -e alsamixer") },


	//-------------------------- Hardware ------------------------------
	{ 0, XF86XK_AudioMute,			spawn,		SHCMD("pamixer -t; kill -44 $(pidof dwmblocks)") },
	{ 0, XF86XK_AudioRaiseVolume,	spawn,		SHCMD("pamixer --allow-boost -i 5; kill -44 $(pidof dwmblocks)") },
	{ 0, XF86XK_AudioLowerVolume,	spawn,		SHCMD("pamixer --allow-boost -d 5; kill -44 $(pidof dwmblocks)") },


};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          SHCMD("$TERMINAL") },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};
