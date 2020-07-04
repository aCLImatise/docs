class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/iu_fastq_to_fasta.cwl
inputs:
- id: number_of_sequences
  doc: Number of sequences to be converted
  type: string
  inputBinding:
    prefix: --number-of-sequences
- id: output
  doc: 'FASTA output (default: [-i]-FASTA-[-n]'
  type: string
  inputBinding:
    prefix: --output
- id: rev_comp
  doc: When set, during the conversion reads will be reverse complemented.
  type: boolean
  inputBinding:
    prefix: --rev-comp
- id: input
  doc: FASTQ file to be converted
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-fastq-to-fasta
