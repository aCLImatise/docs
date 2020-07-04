class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mzml2isa.cwl
inputs:
- id: input_folder_archive
  doc: input folder or archive containing mzML files
  type: string
  inputBinding:
    prefix: -i
- id: folder_new_files
  doc: out folder (new files will be created here)
  type: string
  inputBinding:
    prefix: -o
- id: study_identifier_mtblsxxx
  doc: study identifier (e.g. MTBLSxxx)
  type: string
  inputBinding:
    prefix: -s
- id: additional_user_provided
  doc: additional user provided metadata (JSON format)
  type: string
  inputBinding:
    prefix: -m
- id: launch_different_processes
  doc: launch different processes for parsing
  type: string
  inputBinding:
    prefix: -j
- id: not_split_files
  doc: do NOT split assay files based on polarity
  type: boolean
  inputBinding:
    prefix: -n
- id: not_group_samples
  doc: do NOT group centroid & profile samples
  type: boolean
  inputBinding:
    prefix: -c
- id: warning_control_python
  doc: warning control (with python default behaviour)
  type: string
  inputBinding:
    prefix: -W
- id: directory_containing_files
  doc: directory containing default template files
  type: string
  inputBinding:
    prefix: -t
- id: show_more_default
  doc: show more output (default if tqdm is not installed)
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mzml2isa
