class: CommandLineTool
id: SamHaplotag.cwl
inputs:
- id: in_sam_format
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
  dockerPull: quay.io/biocontainers/samhaplotag:0.0.1--h7d875b9_0
cwlVersion: v1.1
baseCommand:
- SamHaplotag
