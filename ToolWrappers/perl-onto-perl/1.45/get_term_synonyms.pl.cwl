class: CommandLineTool
id: get_term_synonyms.pl.cwl
inputs:
- id: in_obo_input_file
  doc: OBO input file
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_term_name
  doc: term name
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_usage
  doc: ': get_term_synonyms.pl [options]'
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
- get_term_synonyms.pl
