class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_estimate_genome_completeness.cwl
inputs:
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: external_genomes
  doc: A two-column TAB-delimited flat text file that lists anvi'o contigs databases.
    The first item in the header line should read 'name', and the second should read
    'contigs_db_path'. Each line in the file should describe a single entry, where
    the first column is the name of the genome (or MAG), and the second column is
    the anvi'o contigs database generated for this genome.
  type: File
  inputBinding:
    prefix: --external-genomes
- id: profile_db
  doc: Anvi'o profile database
  type: string
  inputBinding:
    prefix: --profile-db
- id: collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: list_collections
  doc: Show available collections and exit.
  type: boolean
  inputBinding:
    prefix: --list-collections
- id: just_do_it
  doc: Don't bother me with questions or warnings, just do it.
  type: boolean
  inputBinding:
    prefix: --just-do-it
- id: concise
  doc: Don't be verbose, print less messages whenever possible.
  type: boolean
  inputBinding:
    prefix: --concise
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-estimate-genome-completeness
