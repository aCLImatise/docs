class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/make_gnuplot_graph.pl.cwl
inputs:
- id: no_key
  doc: Supress printing of keys in a -all plot
  type: boolean
  inputBinding:
    prefix: -no_key
- id: debug
  doc: ':          Print the resulting commands to STDOUT'
  type: boolean
  inputBinding:
    prefix: -debug
outputs: []
cwlVersion: v1.1
baseCommand:
- make_gnuplot_graph.pl
