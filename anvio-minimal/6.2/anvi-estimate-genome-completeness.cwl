#!/usr/bin/env cwl-runner

baseCommand:
- anvi-estimate-genome-completeness
class: CommandLineTool
cwlVersion: v1.0
id: anvi-estimate-genome-completeness
inputs:
- doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  id: contigs_db
  inputBinding:
    prefix: --contigs-db
  type: string
- doc: A two-column TAB-delimited flat text file that lists anvi'o contigs databases.
    The first item in the header line should read 'name', and the second should read
    'contigs_db_path'. Each line in the file should describe a single entry, where
    the first column is the name of the genome (or MAG), and the second column is
    the anvi'o contigs database generated for this genome.
  id: external_genomes
  inputBinding:
    prefix: --external-genomes
  type: File
- doc: Anvi'o profile database
  id: profile_db
  inputBinding:
    prefix: --profile-db
  type: string
- doc: Collection name.
  id: collection_name
  inputBinding:
    prefix: --collection-name
  type: string
- doc: Show available collections and exit.
  id: list_collections
  inputBinding:
    prefix: --list-collections
  type: boolean
- doc: Don't bother me with questions or warnings, just do it.
  id: just_do_it
  inputBinding:
    prefix: --just-do-it
  type: boolean
- doc: Don't be verbose, print less messages whenever possible.
  id: concise
  inputBinding:
    prefix: --concise
  type: boolean
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
