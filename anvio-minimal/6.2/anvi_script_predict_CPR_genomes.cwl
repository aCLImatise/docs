class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_script_predict_CPR_genomes.cwl
inputs:
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
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
- id: report_only_cpr
  doc: Include only bins that look like CPR genomes.
  type: boolean
  inputBinding:
    prefix: --report-only-cpr
- id: min_genome_size
  doc: Minimum genome size to consider for CPR in Mbp. Default is 0.500000
  type: long
  inputBinding:
    prefix: --min-genome-size
- id: min_percent_completion
  doc: Minimum percent completion estimate based on anvi'o default single-copy gene
    collections. Default is 50
  type: long
  inputBinding:
    prefix: --min-percent-completion
- id: max_percent_redundancy
  doc: Maxumum percent redundancy or single-copy genes in an anvi'o bin, or a genome
    to consider for classification. The default is 30
  type: long
  inputBinding:
    prefix: --max-percent-redundancy
- id: min_class_probability
  doc: If the classification confidence is below this don't bother. Default is 75.
  type: long
  inputBinding:
    prefix: --min-class-probability
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: just_do_it
  doc: Don't bother me with questions or warnings, just do it.
  type: boolean
  inputBinding:
    prefix: --just-do-it
- id: classifier_file
  doc: Model output generated by anvi-script-gen-CPR- classifier
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-predict-CPR-genomes
