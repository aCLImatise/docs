class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dr_disco_fix.cwl
inputs:
- id: temp_dir
  doc: 'Path in which temp files are stored (default: /tmp)'
  type: File
  inputBinding:
    prefix: --temp-dir
- id: input_alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dr-disco
- fix
