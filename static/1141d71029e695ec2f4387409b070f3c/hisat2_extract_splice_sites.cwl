class: CommandLineTool
id: hisat2_extract_splice_sites.py_gtf_file.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- hisat2_extract_splice_sites.py
- gtf_file
