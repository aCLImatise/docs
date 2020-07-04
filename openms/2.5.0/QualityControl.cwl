class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/QualityControl.cwl
inputs:
- id: in_cm
  doc: "*                         ConsensusXML input, generated by FeatureLinker.\
    \ (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in_cm
- id: in_raw
  doc: "MzML input (after InternalCalibration, if available) (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in_raw
- id: in_post_fdr
  doc: "FeatureXMLs after FDR filtering (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -in_postFDR
- id: out
  doc: "*                           Output mzTab with QC information (valid formats:\
    \ 'mzTab')"
  type: File
  inputBinding:
    prefix: -out
- id: out_cm
  doc: "ConsensusXML with QC information (as metavalues) (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out_cm
- id: out_feat
  doc: "FeatureXMLs with QC information (as metavalues) (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out_feat
- id: in_contaminants
  doc: "Proteins considered contaminants (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -in_contaminants
- id: in_traf_o
  doc: "TrafoXMLs from MapAligners (valid formats: 'trafoXML')"
  type: File
  inputBinding:
    prefix: -in_trafo
- id: ms_two_id_rate
  doc: :force_no_fdr              Forces the metric to run if FDR is missing (accepts
    all pep_ids as target hits).
  type: boolean
  inputBinding:
    prefix: -MS2_id_rate
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
- QualityControl
