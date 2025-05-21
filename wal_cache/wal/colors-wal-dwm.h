static const char norm_fg[] = "#c2c3c5";
static const char norm_bg[] = "#0B0F17";
static const char norm_border[] = "#59616e";

static const char sel_fg[] = "#c2c3c5";
static const char sel_bg[] = "#514224";
static const char sel_border[] = "#c2c3c5";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
};
