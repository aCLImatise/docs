class: CommandLineTool
id: crux_xlink_score_spectrum_peptide A_peptide B_pos A_pos B_link mass_charge state_scan
  number.cwl
inputs:
- id: ms2_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- xlink-score-spectrum
- peptide A
- peptide B
- pos A
- pos B
- link mass
- charge state
- scan number
