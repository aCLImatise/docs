class: CommandLineTool
id: bowtie_inspect_l.cwl
inputs:
- id: in_across
  doc: 'Number of characters across in FASTA output (default: 60)'
  type: long?
  inputBinding:
    prefix: --across
- id: in_names
  doc: Print reference sequence names only
  type: boolean?
  inputBinding:
    prefix: --names
- id: in_summary
  doc: Print summary incl. ref names, lengths, index properties
  type: boolean?
  inputBinding:
    prefix: --summary
- id: in_e_bwt_ref
  doc: Reconstruct reference from ebwt (slow, preserves colors)
  type: boolean?
  inputBinding:
    prefix: --ebwt-ref
- id: in_verbose
  doc: Verbose output (for debugging)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_bowtie_inspect
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bowtie:1.3.0--py38hed8969a_1
cwlVersion: v1.1
baseCommand:
- bowtie-inspect-l
