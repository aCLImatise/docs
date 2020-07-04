class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chado_import_essentials.cwl
inputs:
- id: verbose
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: config
  doc: YAML file containing connection details
  type: string
  inputBinding:
    prefix: --config
- id: use_password
  doc: 'connect with password (default: no password)'
  type: boolean
  inputBinding:
    prefix: --use_password
- id: dbname
  doc: name of the database
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chado
- import
- essentials
