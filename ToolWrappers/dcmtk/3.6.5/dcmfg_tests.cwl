class: CommandLineTool
id: dcmfg_tests.cwl
inputs:
- id: in_list
  doc: list available tests and exit
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_exhaustive
  doc: also run extensive and slow tests
  type: boolean?
  inputBinding:
    prefix: --exhaustive
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean?
  inputBinding:
    prefix: --arguments
- id: in_quiet
  doc: quiet mode, print no warnings and errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose mode, print processing details
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: debug mode, print debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_log_level
  doc: "[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level\
    \ l for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_config
  doc: "[f]ilename: string\nuse config file f for the logger\n"
  type: boolean?
  inputBinding:
    prefix: --log-config
- id: in_tests_to_run
  doc: 'names of tests to run (default: all)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0
cwlVersion: v1.1
baseCommand:
- dcmfg_tests
