class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastq_sample.cwl
inputs:
- id: number_sample_default
  doc: 'the number of reads to sample (default: 10000)'
  type: string
  inputBinding:
    prefix: -n
- id: proportion_total_reads
  doc: the proportion of the total reads to sample
  type: string
  inputBinding:
    prefix: -p
- id: output
  doc: output file prefix
  type: string
  inputBinding:
    prefix: --output
- id: with_replacement
  doc: sample with replacement
  type: boolean
  inputBinding:
    prefix: --with-replacement
- id: seed
  doc: a manual seed to the random number generator
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-sample
