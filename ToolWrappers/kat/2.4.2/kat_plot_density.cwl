class: CommandLineTool
id: kat_plot_density.cwl
inputs:
- id: in_output
  doc: The path to the output file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: "The plot file type to create (default is based on\ngiven output name)."
  type: File?
  inputBinding:
    prefix: --output_type
- id: in_title
  doc: Title for plot
  type: string?
  inputBinding:
    prefix: --title
- id: in_x_label
  doc: Label for x-axis
  type: string?
  inputBinding:
    prefix: --x_label
- id: in_y_label
  doc: Label for y-axis
  type: string?
  inputBinding:
    prefix: --y_label
- id: in_z_label
  doc: Label for z-axis
  type: string?
  inputBinding:
    prefix: --z_label
- id: in_x_max
  doc: Maximum value for x-axis
  type: string?
  inputBinding:
    prefix: --x_max
- id: in_y_max
  doc: Maximum value for y-axis
  type: string?
  inputBinding:
    prefix: --y_max
- id: in_z_max
  doc: Maximum value for z-axis
  type: string?
  inputBinding:
    prefix: --z_max
- id: in_width
  doc: Width of canvas
  type: string?
  inputBinding:
    prefix: --width
- id: in_height
  doc: Height of canvas
  type: string?
  inputBinding:
    prefix: --height
- id: in_not_raster_is_ed
  doc: Don't rasterise graphics (slower).
  type: string?
  inputBinding:
    prefix: --not_rasterised
- id: in_dpi
  doc: Resolution in dots per inch of output graphic.
  type: string?
  inputBinding:
    prefix: --dpi
- id: in_verbose
  doc: Print extra information
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The path to the output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_type
  doc: "The plot file type to create (default is based on\ngiven output name)."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_type)
hints: []
cwlVersion: v1.1
baseCommand:
- kat_plot_density
