class: CommandLineTool
id: mb_plot_transition_frequencies_inputfile.cwl
inputs:
- id: in_coverage
  doc: ''
  type: string
  inputBinding:
    prefix: --coverage
- id: in_mb_plot_transition_frequencies
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-plot-transition-frequencies
- inputfile
