class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedops_float128.cwl
inputs:
- id: chrom
  doc: Jump to and process data for given <chromosome> only.
  type: string
  inputBinding:
    prefix: --chrom
- id: ec
  doc: Error check input files (slower).
  type: boolean
  inputBinding:
    prefix: --ec
- id: header
  doc: Accept headers (VCF, GFF, SAM, BED, WIG) in any input file.
  type: boolean
  inputBinding:
    prefix: --header
- id: help
  doc: <operation>   Detailed help on <operation>. An example is --help-c or --help-complement
  type: boolean
  inputBinding:
    prefix: --help-
- id: bed_ops
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: process_flags
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: operation
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bedops-float128
