class: CommandLineTool
id: ../../../mb_normalize_normalization_pileup.cwl
inputs:
- id: mut_snp_ratio
  doc: ''
  type: string
  inputBinding:
    prefix: --mut_snp_ratio
- id: mb_normalize
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-normalize
- normalization_pileup
