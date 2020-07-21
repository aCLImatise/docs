class: CommandLineTool
id: ../../../FeatureFinderMultiplex.cwl
inputs:
- id: in
  doc: "*                              LC-MS dataset in either centroid or profile\
    \ mode (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output file containing the individual peptide features. (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- FeatureFinderMultiplex
