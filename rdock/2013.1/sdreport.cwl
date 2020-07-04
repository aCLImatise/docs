class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sdreport.cwl
inputs:
- id: list_format_output
  doc: (list format) output all data fields for each record as processed
  type: boolean
  inputBinding:
    prefix: -l
- id: tab_format_tabulate
  doc: (tab format) tabulate selected fields for each record as processed
  type: boolean
  inputBinding:
    prefix: -t
- id: csv_format_comma
  doc: (csv format) comma delimited output of selected fields for each record as processed
  type: boolean
  inputBinding:
    prefix: -c
- id: summary_format_output
  doc: (summary format) output summary statistics for each unique value of ligand
    ID
  type: boolean
  inputBinding:
    prefix: -s
- id: sup
  doc: (supplier format) tabulate supplier details (from Catalyst)
  type: boolean
  inputBinding:
    prefix: -sup
- id: id
  doc: <IDField> data field to use as ligand ID
  type: boolean
  inputBinding:
    prefix: -id
- id: nh
  doc: "'t output column headings in -t and -c formats"
  type: string
  inputBinding:
    prefix: -nh
- id: old_v_score
  doc: old (v3.00) score field names as default columns in -t and -c formats, else
    use v4.00 field names
  type: string
  inputBinding:
    prefix: -o
- id: norm
  doc: 'normalised score field names as default columns in -t and -c formats (normalised
    = score / #ligand heavy atoms)'
  type: string
  inputBinding:
    prefix: -norm
outputs: []
cwlVersion: v1.1
baseCommand:
- sdreport
