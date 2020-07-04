class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/NCBImetaAnnotateReplace.py.cwl
inputs:
- id: an_not_file
  doc: '[--version]'
  type: string
  inputBinding:
    prefix: --annotfile
- id: database
  doc: Path to the sqlite database generated by NCBImeta.
  type: string
  inputBinding:
    prefix: --database
- id: table
  doc: Table in NCBImeta database to modify
  type: string
  inputBinding:
    prefix: --table
outputs: []
cwlVersion: v1.1
baseCommand:
- NCBImetaAnnotateReplace.py
