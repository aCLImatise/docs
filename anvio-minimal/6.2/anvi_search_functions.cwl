class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_search_functions.cwl
inputs:
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: pan_db
  doc: Anvi'o pan database
  type: string
  inputBinding:
    prefix: --pan-db
- id: genomes_storage
  doc: Anvi'o genomes storage file
  type: string
  inputBinding:
    prefix: --genomes-storage
- id: list_annotation_sources
  doc: List available functional annotation sources.
  type: boolean
  inputBinding:
    prefix: --list-annotation-sources
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: full_report
  doc: Optional output file with a fuller description of findings.
  type: File
  inputBinding:
    prefix: --full-report
- id: include_sequences
  doc: Include sequences in the report.
  type: boolean
  inputBinding:
    prefix: --include-sequences
- id: verbose
  doc: Be verbose, print more messages whenever possible.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-search-functions
