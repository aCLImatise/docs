class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pmmrcalculator.cwl
inputs:
- id: input
  doc: The desired input file prefix. Input files are assumed to be <INPUT PREFIX>.geno,
    <INPUT PREFIX>.snp and <INPUT PREFIX>.ind .
  type: string
  inputBinding:
    prefix: --Input
- id: output
  doc: The desired output file name. Omit to print to stdout.
  type: string
  inputBinding:
    prefix: --Output
- id: suffix
  doc: The desired input file suffix. Input files are assumed to be <INPUT PREFIX>.geno<INPUT
    SUFFIX>, <INPUT PREFIX>.snp<INPUT SUFFIX> and <INPUT PREFIX>.ind<INPUT SUFFIX>
    .
  type: string
  inputBinding:
    prefix: --Suffix
- id: json
  doc: "Create additional json formatted output file named <OUTPUT FILE>.json . [Default:\
    \ 'pmmrcalculator_output.json']"
  type: boolean
  inputBinding:
    prefix: --json
outputs: []
cwlVersion: v1.1
baseCommand:
- pmmrcalculator
