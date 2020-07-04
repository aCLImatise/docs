class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chado_extract_annotation_updates.cwl
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
- id: abbreviation
  doc: 'restrict to a certain organism, defined by its abbreviation/short name (default:
    all)'
  type: string
  inputBinding:
    prefix: --abbreviation
- id: start_date
  doc: date for maximum age of updates, format 'YYYYMMDD'
  type: string
  inputBinding:
    prefix: --start_date
- id: end_date
  doc: "date for minimum age of updates, format 'YYYYMMDD' (default: today)"
  type: string
  inputBinding:
    prefix: --end_date
- id: public_only
  doc: 'restrict to public genomes (default: all)'
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
- annotation_updates
