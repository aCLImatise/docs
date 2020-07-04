class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/IDConflictResolver.cwl
inputs:
- id: in
  doc: "*                                           Input file (data annotated with\
    \ identifications) (valid formats: 'featureXML', 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                                          Output file (data with one peptide\
    \ identification per feature) (valid formats: 'featureXML', 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out
- id: resolve_between_features
  doc: "A map may contain multiple features with both identical (possibly modified\
    \ i.e. not stripped) sequence and charge state. The feature with the 'highest\
    \ intensity' is very likely the most reliable one. When switched on, the filter\
    \ removes the sequence annotation from the lower intensity features, thereby resolving\
    \ the multiplicity. Only the most reliable features for each (possibly modified\
    \ i.e. not stripped) sequence maintain annotated with this peptide sequence. (default:\
    \ 'off' valid: 'off', 'highest_intensity')"
  type: string
  inputBinding:
    prefix: -resolve_between_features
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
- IDConflictResolver
