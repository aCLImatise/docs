class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/geno2lfmm.cwl
inputs:
- id: input
  doc: --help
  type: File
  inputBinding:
    prefix: -input
- id: output
  doc: --help.lfmm
  type: File
  inputBinding:
    prefix: -output
outputs: []
cwlVersion: v1.1
baseCommand:
- geno2lfmm
