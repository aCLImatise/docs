class: CommandLineTool
id: cramtools_index.cwl
inputs:
- id: in_index_file
  doc: Write index to this file.
  type: boolean?
  inputBinding:
    prefix: --index-file
- id: in_index_format
  doc: 'Choose between BAM index (bai) and CRAM index (crai).  (default: CRAI)'
  type: boolean?
  inputBinding:
    prefix: --index-format
- id: in_input_file
  doc: Path to a BAM or CRAM file to be indexed. Omit if standard input (pipe).
  type: boolean?
  inputBinding:
    prefix: --input-file
- id: in_log_level
  doc: 'Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_main_class
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cramtools
- index
