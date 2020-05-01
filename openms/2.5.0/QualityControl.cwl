#!/usr/bin/env cwl-runner

baseCommand:
- QualityControl
class: CommandLineTool
cwlVersion: v1.0
id: qualitycontrol
inputs:
- doc: "*                         ConsensusXML input, generated by FeatureLinker.\
    \ (valid formats: 'consensusXML')"
  id: in_cm
  inputBinding:
    prefix: -in_cm
  type: File
- doc: "MzML input (after InternalCalibration, if available) (valid formats: 'mzML')"
  id: in_raw
  inputBinding:
    prefix: -in_raw
  type: File
- doc: "FeatureXMLs after FDR filtering (valid formats: 'featureXML')"
  id: in_post_fdr
  inputBinding:
    prefix: -in_postFDR
  type: File
- doc: "*                           Output mzTab with QC information (valid formats:\
    \ 'mzTab')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "ConsensusXML with QC information (as metavalues) (valid formats: 'consensusXML')"
  id: out_cm
  inputBinding:
    prefix: -out_cm
  type: File
- doc: "FeatureXMLs with QC information (as metavalues) (valid formats: 'featureXML')"
  id: out_feat
  inputBinding:
    prefix: -out_feat
  type: File
- doc: ":unit <unit>         Unit for mass tolerance. 'auto' uses information from\
    \ FeatureXML (default: 'auto' valid: 'auto', 'ppm', 'da')"
  id: fragment_mass_error
  inputBinding:
    prefix: -FragmentMassError
  type: boolean
- doc: ":tolerance <double>  M/z search window for matching peaks in two spectra (default:\
    \ '20.0')"
  id: fragment_mass_error
  inputBinding:
    prefix: -FragmentMassError
  type: boolean
- doc: "Proteins considered contaminants (valid formats: 'fasta')"
  id: in_contaminants
  inputBinding:
    prefix: -in_contaminants
  type: File
- doc: "TrafoXMLs from MapAligners (valid formats: 'trafoXML')"
  id: in_traf_o
  inputBinding:
    prefix: -in_trafo
  type: File
- doc: :force_no_fdr              Forces the metric to run if FDR is missing (accepts
    all pep_ids as target hits).
  id: ms2_id_rate
  inputBinding:
    prefix: -MS2_id_rate
  type: boolean
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
