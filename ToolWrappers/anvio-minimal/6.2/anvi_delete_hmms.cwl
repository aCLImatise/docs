class: CommandLineTool
id: anvi_delete_hmms.cwl
inputs:
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string?
  inputBinding:
    prefix: --contigs-db
- id: in_hmm_source
  doc: "NAME\nUse a specific HMM source. You can use '--list-hmm-\nsources' flag to\
    \ see a list of available resources.\nThe default is 'None'."
  type: string?
  inputBinding:
    prefix: --hmm-source
- id: in_list_hmm_sources
  doc: "List available HMM sources in the contigs database and\nquit."
  type: boolean?
  inputBinding:
    prefix: --list-hmm-sources
- id: in_just_do_it
  doc: "Don't bother me with questions or warnings, just do\nit.\n"
  type: boolean?
  inputBinding:
    prefix: --just-do-it
- id: in_name
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-delete-hmms
