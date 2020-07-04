class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chado_extract_organisms.cwl
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
- id: include_header
  doc: 'include header in CSV output (default: False)'
  type: boolean
  inputBinding:
    prefix: --include_header
- id: delimiter
  doc: 'Character delimiting fields in CSV output (default: tab)'
  type: string
  inputBinding:
    prefix: --delimiter
- id: output_file
  doc: 'file into which data are exported (default: stdout)'
  type: string
  inputBinding:
    prefix: --output_file
- id: format
  doc: 'format of the file (default: csv)'
  type: string
  inputBinding:
    prefix: --format
- id: public_only
  doc: 'only extract public genomes (default: extract all)'
  type: boolean
  inputBinding:
    prefix: --public_only
- id: dbname
  doc: name of the database
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chado
- extract
- organisms
