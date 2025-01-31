class: CommandLineTool
id: iu_visualize_plot_dicts.cwl
inputs:
- id: in_dest
  doc: Figure destination
  type: string?
  inputBinding:
    prefix: --dest
- id: in_title
  doc: Title to appear at the top of the figure
  type: string?
  inputBinding:
    prefix: --title
- id: in_split_tiles
  doc: "When set, quality curves will be shown separately for\neach tile\n"
  type: boolean?
  inputBinding:
    prefix: --split-tiles
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/illumina-utils:2.11--py_0
cwlVersion: v1.1
baseCommand:
- iu-visualize-plot-dicts
