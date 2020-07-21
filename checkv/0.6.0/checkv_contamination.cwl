class: CommandLineTool
id: ../../../checkv_contamination.cwl
inputs:
- id: reference_database_path
  doc: Reference database path. By default the CHECKVDB environment variable is used
  type: File
  inputBinding:
    prefix: -d
- id: number_threads_use
  doc: Number of threads to use for Prodigal and hmmsearch
  type: long
  inputBinding:
    prefix: -t
- id: restart
  doc: Overwrite existing intermediate files. By default CheckV continues where program
    left off
  type: boolean
  inputBinding:
    prefix: --restart
- id: quiet
  doc: Suppress logging messages
  type: boolean
  inputBinding:
    prefix: --quiet
- id: input
  doc: Input nucleotide sequences in FASTA format
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output directory
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- checkv
- contamination
