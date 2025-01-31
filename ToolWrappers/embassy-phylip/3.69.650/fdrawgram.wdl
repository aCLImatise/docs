version 1.0

task Fdrawgram {
  input {
    Boolean? style
    Boolean? plotter
    Boolean? previewer
    Boolean? lengths
    Boolean? tree_depth
    Boolean? stem_length
    Boolean? node_space
    Boolean? no_deposition
    Boolean? paper_x
    Boolean? papery
    Boolean? pages_height
    Boolean? pages_width
    Boolean? hp_margin
    Boolean? vp_margin
    Boolean? font_file
  }
  command <<<
    fdrawgram \
      ~{if (style) then "-style" else ""} \
      ~{if (plotter) then "-plotter" else ""} \
      ~{if (previewer) then "-previewer" else ""} \
      ~{if (lengths) then "-lengths" else ""} \
      ~{if (tree_depth) then "-treedepth" else ""} \
      ~{if (stem_length) then "-stemlength" else ""} \
      ~{if (node_space) then "-nodespace" else ""} \
      ~{if (no_deposition) then "-nodeposition" else ""} \
      ~{if (paper_x) then "-paperx" else ""} \
      ~{if (papery) then "-papery" else ""} \
      ~{if (pages_height) then "-pagesheight" else ""} \
      ~{if (pages_width) then "-pageswidth" else ""} \
      ~{if (hp_margin) then "-hpmargin" else ""} \
      ~{if (vp_margin) then "-vpmargin" else ""} \
      ~{if (font_file) then "-fontfile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    style: "menu       [c] Tree style output (Values: c (cladogram\\n(v-shaped)); p (phenogram (branches are\\nsquare)); v (curvogram (branches are 1/4 out\\nof an ellipse)); e (eurogram (branches\\nangle outward, then up)); s (swooporam\\n(branches curve outward then reverse)); o\\n(circular tree))"
    plotter: "menu       [l] Plotter or printer the tree will be\\ndrawn on (Values: l (Postscript printer file\\nformat); m (PICT format (for drawing\\nprograms)); j (HP 75 DPI Laserjet PCL file\\nformat); s (HP 150 DPI Laserjet PCL file\\nformat); y (HP 300 DPI Laserjet PCL file\\nformat); w (MS-Windows Bitmap); f (FIG 2.0\\ndrawing program format); a (Idraw drawing\\nprogram format); z (VRML Virtual Reality\\nMarkup Language file); n (PCX 640x350 file\\nformat (for drawing programs)); p (PCX\\n800x600 file format (for drawing programs));\\nq (PCX 1024x768 file format (for drawing\\nprograms)); k (TeKtronix 4010 graphics\\nterminal); x (X Bitmap format); v (POVRAY 3D\\nrendering program file); r (Rayshade 3D\\nrendering program file); h (Hewlett-Packard\\npen plotter (HPGL file format)); d (DEC\\nReGIS graphics (VT240 terminal)); e (Epson\\nMX-80 dot-matrix printer); c\\n(Prowriter/Imagewriter dot-matrix printer);\\nt (Toshiba 24-pin dot-matrix printer); o\\n(Okidata dot-matrix printer); b (Houston\\nInstruments plotter); u (other (one you have\\ninserted code for)))"
    previewer: "menu       [x] Previewing device (Values: n (Will not\\nbe previewed); I i (MSDOS graphics screen\\nm:Macintosh screens); x (X Windows display);\\nw (MS Windows display); k (TeKtronix 4010\\ngraphics terminal); d (DEC ReGIS graphics\\n(VT240 terminal)); o (Other (one you have\\ninserted code for)))"
    lengths: "boolean    [N] Use branch lengths from user trees"
    tree_depth: "float      [0.53] Depth of tree as fraction of its\\nbreadth (Number from 0.100 to 100.000)"
    stem_length: "float      [0.05] Stem length as fraction of tree depth\\n(Number from 0.010 to 100.000)"
    node_space: "float      [0.3333] Character height as fraction of tip\\nspacing (Number from 0.100 to 100.000)"
    no_deposition: "menu       [c] Position of interior nodes (Values: i\\n(Intermediate between their immediate\\ndescendants); w (Weighted average of tip\\npositions); c (Centered among their ultimate\\ndescendants); n (Innermost of immediate\\ndescendants); v (So tree is v shaped))"
    paper_x: "float      [20.63750] Paper width (Any numeric value)"
    papery: "float      [26.98750] Paper height (Number 0.100 or\\nmore)"
    pages_height: "float      [1] Number of trees across height of page\\n(Number 1.000 or more)"
    pages_width: "float      [1] Number of trees across width of page\\n(Number 1.000 or more)"
    hp_margin: "float      [0.41275] Horizontal overlap (cm) (Number\\n0.001 or more)"
    vp_margin: "float      [0.53975] Vertical overlap (cm) (Number\\n0.001 or more)"
    font_file: "string     [font1] Fontfile name (Any string)"
  }
  output {
    File out_stdout = stdout()
  }
}