class: CommandLineTool
id: ../../../lorikeet_evolve.cwl
inputs:
- id: bam_files
  doc: ''
  type: string
  inputBinding:
    prefix: --bam-files
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- lorikeet
- evolve
