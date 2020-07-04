class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bolt_fasta_view.cwl
inputs:
- id: file_path
  doc: A bam file (*require)
  type: string
  inputBinding:
    prefix: --filepath
- id: scope
  doc: Scope chr:begin-end (*require)
  type: string
  inputBinding:
    prefix: --scope
- id: genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: view
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- bolt
- fasta
- view
