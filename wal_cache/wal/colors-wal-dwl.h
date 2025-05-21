/* Taken from https://github.com/djpohly/dwl/issues/466 */
#define COLOR(hex)    { ((hex >> 24) & 0xFF) / 255.0f, \
                        ((hex >> 16) & 0xFF) / 255.0f, \
                        ((hex >> 8) & 0xFF) / 255.0f, \
                        (hex & 0xFF) / 255.0f }

static const float rootcolor[]             = COLOR(0x0B0F17ff);
static uint32_t colors[][3]                = {
	/*               fg          bg          border    */
	[SchemeNorm] = { 0xc2c3c5ff, 0x0B0F17ff, 0x59616eff },
	[SchemeSel]  = { 0xc2c3c5ff, 0x434236ff, 0x514224ff },
	[SchemeUrg]  = { 0xc2c3c5ff, 0x514224ff, 0x434236ff },
};
