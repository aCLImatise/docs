class: CommandLineTool
id: fasten_validate.cwl
inputs:
- id: in_num_cpus
  doc: 'Number of CPUs (default: 1)'
  type: long?
  inputBinding:
    prefix: --numcpus
- id: in_paired_end
  doc: The input reads are interleaved paired-end
  type: boolean?
  inputBinding:
    prefix: --paired-end
- id: in_verbose
  doc: Print more status messages
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_min_length
  doc: Minimum read length allowed
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_min_quality
  doc: Minimum quality allowed
  type: double?
  inputBinding:
    prefix: --min-quality
- id: in_print_reads
  doc: "Print the reads as they are being validated (useful\nfor unix pipes)"
  type: boolean?
  inputBinding:
    prefix: --print-reads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fasten_validate
