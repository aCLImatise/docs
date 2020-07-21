class: CommandLineTool
id: ../../../bcftools_reheader.cwl
inputs:
- id: fai
  doc: update sequences and their lengths from the .fai file
  type: File
  inputBinding:
    prefix: --fai
- id: header
  doc: new header
  type: File
  inputBinding:
    prefix: --header
- id: output
  doc: write output to a file [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: samples
  doc: new sample names
  type: File
  inputBinding:
    prefix: --samples
- id: threads
  doc: use multithreading with <int> worker threads (BCF only) [0]
  type: long
  inputBinding:
    prefix: --threads
- id: in_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- reheader
