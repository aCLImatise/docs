class: CommandLineTool
id: cgb2ctg.cwl
inputs:
- id: in_extension
  doc: "otherwise -i and -o are those specified in the command line\nif -i is provided\
    \ the filename must end in .cgb\n"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cgb2ctg
