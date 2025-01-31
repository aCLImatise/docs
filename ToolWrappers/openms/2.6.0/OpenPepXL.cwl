class: CommandLineTool
id: OpenPepXL.cwl
inputs:
- id: in_in
  doc: "*                                       Input file containing the spectra.\
    \ (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_consensus
  doc: "*                                Input file containing the linked mass peaks.\
    \ (valid formats: 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -consensus
- id: in_database
  doc: "*                                 Input file containing the protein database.\
    \ (valid formats: 'fasta')"
  type: File?
  inputBinding:
    prefix: -database
- id: in_decoy_string
  doc: "String that was appended (or prefixed - see 'prefix' flag below) to the accessions\
    \ in the protein database to indicate decoy proteins. (default: 'DECOY_')"
  type: string?
  inputBinding:
    prefix: -decoy_string
- id: in_decoy_prefix
  doc: "Set to true, if the decoy_string is a prefix of accessions in the protein\
    \ database. Otherwise it is a suffix. (default: 'true' valid: 'true', 'false')"
  type: string?
  inputBinding:
    prefix: -decoy_prefix
- id: in_algorithm
  doc: ":number_top_hits <number>               Number of top hits reported for each\
    \ spectrum pair (default: '5')"
  type: boolean?
  inputBinding:
    prefix: -algorithm
- id: in_out_idxml
  doc: "Results in idXML format (at least one of these output parameters should be\
    \ set, otherwise you will not have any results) (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out_idXML
- id: in_out_mz_ident_ml
  doc: "Results in mzIdentML (.mzid) format (at least one of these output parameters\
    \ should be set, otherwise you will not have any results) (valid formats: 'mzid')"
  type: File?
  inputBinding:
    prefix: -out_mzIdentML
- id: in_out_x_quest_xml
  doc: "Results in the xquest.xml format (at least one of these output parameters\
    \ should be set, otherwise you will not have any results). (valid formats: 'xquest.xml')"
  type: File?
  inputBinding:
    prefix: -out_xquestxml
- id: in_out_x_quest_spec_xml
  doc: "Matched spectra in the xQuest .spec.xml format for spectra visualization in\
    \ the xQuest results manager. (valid formats: 'spec.xml')"
  type: File?
  inputBinding:
    prefix: -out_xquest_specxml
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- OpenPepXL
