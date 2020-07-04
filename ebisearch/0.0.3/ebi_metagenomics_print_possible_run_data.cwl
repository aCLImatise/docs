class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ebi_metagenomics_print_possible_run_data.cwl
inputs:
- id: run
  doc: Id of a run in EBI metagenomics
  type: string
  inputBinding:
    prefix: --run
outputs: []
cwlVersion: v1.1
baseCommand:
- ebi_metagenomics
- print_possible_run_data
