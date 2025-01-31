class: CommandLineTool
id: decide.cwl
inputs:
- id: in_diploid
  doc: use the diploid model
  type: boolean?
  inputBinding:
    prefix: --diploid
- id: in_first_pass
  doc: do not display 'best k' at the end, inform user of rough estimation
  type: boolean?
  inputBinding:
    prefix: --first_pass
- id: in_number_threads_default
  doc: 'number of threads (default: 1)'
  type: long?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kmergenie:1.7051--py38r40h197edbe_0
cwlVersion: v1.1
baseCommand:
- decide
