class: CommandLineTool
id: ovStoreIndexer.cwl
inputs:
- id: in_path_overlap_store
  doc: path to overlap store to create
  type: File?
  inputBinding:
    prefix: -O
- id: in_path_sequence_store
  doc: path to sequence store
  type: File?
  inputBinding:
    prefix: -S
- id: in_path_ovstoreconfig_configuration
  doc: path to ovStoreConfig configuration file
  type: File?
  inputBinding:
    prefix: -C
- id: in_delete
  doc: "remove intermediate files when the index is\nsuccessfully created"
  type: boolean?
  inputBinding:
    prefix: -delete
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/canu:2.1.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- ovStoreIndexer
