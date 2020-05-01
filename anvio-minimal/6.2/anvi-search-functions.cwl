#!/usr/bin/env cwl-runner

baseCommand:
- anvi-search-functions
class: CommandLineTool
cwlVersion: v1.0
id: anvi-search-functions
inputs:
- doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  id: contigs_db
  inputBinding:
    prefix: --contigs-db
  type: string
- doc: Anvi'o pan database
  id: pan_db
  inputBinding:
    prefix: --pan-db
  type: string
- doc: Anvi'o genomes storage file
  id: genomes_storage
  inputBinding:
    prefix: --genomes-storage
  type: string
- doc: List available functional annotation sources.
  id: list_annotation_sources
  inputBinding:
    prefix: --list-annotation-sources
  type: boolean
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
- doc: Optional output file with a fuller description of findings.
  id: full_report
  inputBinding:
    prefix: --full-report
  type: File
- doc: Include sequences in the report.
  id: include_sequences
  inputBinding:
    prefix: --include-sequences
  type: boolean
- doc: Be verbose, print more messages whenever possible.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
