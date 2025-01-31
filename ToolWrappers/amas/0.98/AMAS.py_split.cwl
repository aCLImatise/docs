class: CommandLineTool
id: AMAS.py_split.cwl
inputs:
- id: in_split_by
  doc: "File name for partitions to be used for alignment\nsplitting."
  type: File?
  inputBinding:
    prefix: --split-by
- id: in_remove_empty
  doc: "Remove taxa with sequences composed of only\nundetermined characters? Default:\
    \ Don't remove"
  type: boolean?
  inputBinding:
    prefix: --remove-empty
- id: in_out_format
  doc: 'File format for the output alignment. Default: fasta'
  type: File?
  inputBinding:
    prefix: --out-format
- id: in_check_align
  doc: 'Check if input sequences are aligned. Default: no'
  type: boolean?
  inputBinding:
    prefix: --check-align
- id: in_in_files
  doc: "Alignment files to be taken as input. You can specify\nmultiple files using\
    \ wildcards (e.g. --in-files\n*fasta)"
  type: string[]
  inputBinding:
    prefix: --in-files
- id: in_in_format
  doc: The format of input alignment
  type: string?
  inputBinding:
    prefix: --in-format
- id: in_data_type
  doc: "Type of data\n"
  type: string?
  inputBinding:
    prefix: --data-type
- id: in_check
  doc: -c CORES, --cores CORES
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_format
  doc: 'File format for the output alignment. Default: fasta'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_format)
hints: []
cwlVersion: v1.1
baseCommand:
- AMAS.py
- split
