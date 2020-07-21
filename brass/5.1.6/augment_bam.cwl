class: CommandLineTool
id: ../../../augment_bam.cwl
inputs:
- id: augment_output_records
  doc: Augment output records with original fields from FILE (required)
  type: File
  inputBinding:
    prefix: -a
- id: invoke_command_output
  doc: Invoke a command for its output rather than reading FILE
  type: boolean
  inputBinding:
    prefix: -c
- id: write_output_bam
  doc: Write output BAM file to FILE rather than standard output
  type: File
  inputBinding:
    prefix: -o
- id: augment_records_pairs
  doc: Augment records in pairs (input files must be grouped by name)
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- augment-bam
