class: CommandLineTool
id: ../../../getLikelyAdapters.pl.cwl
inputs:
- id: len
  doc: '<#,#,...,#> (lengths of oligos to look for, default: 10,20,25,30)'
  type: boolean
  inputBinding:
    prefix: -len
- id: number_reads_check
  doc: '<#> (Number of reads to check for overrepresented oligos, default: 1e5)'
  type: boolean
  inputBinding:
    prefix: -n
- id: number_report_default
  doc: '<#> (number of overrepresented oligos to report, default: 10)'
  type: boolean
  inputBinding:
    prefix: -S
- id: start
  doc: '<#> (position to start looking for oligos, default: 0)'
  type: boolean
  inputBinding:
    prefix: -start
- id: end
  doc: '<#> (last position to look for oligos, default: end of sequence)'
  type: boolean
  inputBinding:
    prefix: -end
- id: fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- getLikelyAdapters.pl
