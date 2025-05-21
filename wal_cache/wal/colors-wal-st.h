const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0B0F17", /* black   */
  [1] = "#514224", /* red     */
  [2] = "#434236", /* green   */
  [3] = "#534f39", /* yellow  */
  [4] = "#66512d", /* blue    */
  [5] = "#5d6152", /* magenta */
  [6] = "#78704b", /* cyan    */
  [7] = "#8e9298", /* white   */

  /* 8 bright colors */
  [8]  = "#59616e",  /* black   */
  [9]  = "#6C5831",  /* red     */
  [10] = "#5A5948", /* green   */
  [11] = "#6F6A4D", /* yellow  */
  [12] = "#896C3D", /* blue    */
  [13] = "#7C826E", /* magenta */
  [14] = "#A09664", /* cyan    */
  [15] = "#c2c3c5", /* white   */

  /* special colors */
  [256] = "#0B0F17", /* background */
  [257] = "#c2c3c5", /* foreground */
  [258] = "#c2c3c5",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
