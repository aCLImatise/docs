class: CommandLineTool
id: makeFastaFileFromScaffolds.pl.cwl
inputs:
- id: in_t_exists_
  doc: "'t exists -- fatal."
  type: string?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- makeFastaFileFromScaffolds.pl
