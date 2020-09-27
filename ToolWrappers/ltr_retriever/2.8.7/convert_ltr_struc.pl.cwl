class: CommandLineTool
id: convert_ltr_struc.pl.cwl
inputs:
- id: in_log_dot_txt
  doc: The log file generated by LTR_STRUC
  type: string
  inputBinding:
    position: 0
- id: in_output_path_slash
  doc: The path that contains all individual report files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convert_ltr_struc.pl
