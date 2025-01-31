class: CommandLineTool
id: gappa_analyze_squash.cwl
inputs:
- id: in_j_place_path
  doc: ":PATH(existing)=[] ... REQUIRED\nList of jplace files or directories to process.\
    \ For directories, only files with the extension `.jplace[.gz]` are processed."
  type: File?
  inputBinding:
    prefix: --jplace-path
- id: in_exponent
  doc: =1          Exponent for KR integration.
  type: double?
  inputBinding:
    prefix: --exponent
- id: in_point_mass
  doc: Treat every pquery as a point mass concentrated on the highest-weight placement.
  type: boolean?
  inputBinding:
    prefix: --point-mass
- id: in_ignore_multiplicities
  doc: Set the multiplicity of each pquery to 1.
  type: boolean?
  inputBinding:
    prefix: --ignore-multiplicities
- id: in_color_list
  doc: =BuPuBk    List of colors to use for the palette. Can either be the name of
    a color list, a file containing one color per line, or an actual list of colors.
  type: File?
  inputBinding:
    prefix: --color-list
- id: in_reverse_color_list
  doc: If set, the `--color-list` is reversed.
  type: boolean?
  inputBinding:
    prefix: --reverse-color-list
- id: in_log_scaling
  doc: If set, the sequential color list is logarithmically scaled instead of linearily.
  type: boolean?
  inputBinding:
    prefix: --log-scaling
- id: in_out_dir
  doc: =.            Directory to write files to
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_file_prefix
  doc: File prefix for output files
  type: File?
  inputBinding:
    prefix: --file-prefix
- id: in_file_suffix
  doc: File suffix for output files
  type: File?
  inputBinding:
    prefix: --file-suffix
- id: in_write_newick_tree
  doc: If set, the tree is written to a Newick file.
  type: boolean?
  inputBinding:
    prefix: --write-newick-tree
- id: in_write_nexus_tree
  doc: If set, the tree is written to a Nexus file.
  type: boolean?
  inputBinding:
    prefix: --write-nexus-tree
- id: in_write_phylo_xml_tree
  doc: If set, the tree is written to a Phyloxml file.
  type: boolean?
  inputBinding:
    prefix: --write-phyloxml-tree
- id: in_write_svg_tree
  doc: If set, the tree is written to a Svg file.
  type: boolean?
  inputBinding:
    prefix: --write-svg-tree
- id: in_svg_tree_shape
  doc: ":{circular,rectangular}=circular\nShape of the tree."
  type: string?
  inputBinding:
    prefix: --svg-tree-shape
- id: in_svg_tree_type
  doc: ":{cladogram,phylogram}=cladogram\nType of the tree."
  type: string?
  inputBinding:
    prefix: --svg-tree-type
- id: in_svg_tree_stroke_width
  doc: "=5\nSvg stroke width for the branches of the tree."
  type: double?
  inputBinding:
    prefix: --svg-tree-stroke-width
- id: in_svg_tree_ladder_ize
  doc: If set, the tree is ladderized.
  type: boolean?
  inputBinding:
    prefix: --svg-tree-ladderize
- id: in_allow_file_overwriting
  doc: Allow to overwrite existing output files instead of aborting the command.
  type: boolean?
  inputBinding:
    prefix: --allow-file-overwriting
- id: in_verbose
  doc: Produce more verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: =8            Number of threads to use for calculations.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: File?
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_prefix
  doc: File prefix for output files
  type: File?
  outputBinding:
    glob: $(inputs.in_file_prefix)
- id: out_file_suffix
  doc: File suffix for output files
  type: File?
  outputBinding:
    glob: $(inputs.in_file_suffix)
- id: out_log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gappa:0.7.0--he513fc3_0
cwlVersion: v1.1
baseCommand:
- gappa
- analyze
- squash
