class: CommandLineTool
id: ../../../lfmm2geno.cwl
inputs:
- id: input
  doc: --help
  type: File
  inputBinding:
    prefix: -input
- id: output
  doc: --help.geno
  type: File
  inputBinding:
    prefix: -output
outputs: []
cwlVersion: v1.1
baseCommand:
- lfmm2geno
