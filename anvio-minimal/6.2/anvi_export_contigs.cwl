class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_export_contigs.cwl
inputs:
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: splits_mode
  doc: Export split sequences instead.
  type: boolean
  inputBinding:
    prefix: --splits-mode
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-export-contigs
