class: CommandLineTool
id: marge_init_regions.cwl
inputs:
- id: directory
  doc: Path to the directory where the workflow shall be initialized.
  type: Directory
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- marge
- init
- regions
