class: CommandLineTool
id: label_analysis_run_post_install_tests.sh.cwl
inputs:
- id: action
  doc: ": what action to take, 'test' or 'clean'"
  type: boolean
  inputBinding:
    prefix: '- action'
- id: use_existing_outputs
  doc: ", 'true' or 'false'"
  type: boolean
  inputBinding:
    prefix: '- use_existing_outputs'
outputs: []
cwlVersion: v1.1
baseCommand:
- label_analysis_run_post_install_tests.sh
