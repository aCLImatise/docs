class: CommandLineTool
id: ../../../getAbundance.cwl
inputs:
- id: resultcsv_resultncsv_minabundance
  doc: '.csv <result2>.csv ... <result_n>.csv -a <minAbundance> ... '
  type: long
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- getAbundance
