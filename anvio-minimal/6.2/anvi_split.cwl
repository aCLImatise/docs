class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_split.cwl
inputs:
- id: pan_or_profile_db
  doc: Anvi'o pan or profile database (and even genes database in appropriate contexts).
  type: string
  inputBinding:
    prefix: --pan-or-profile-db
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: genomes_storage
  doc: Anvi'o genomes storage file
  type: string
  inputBinding:
    prefix: --genomes-storage
- id: skip_variability_tables
  doc: Processing variability tables in profile database might take a very long time.
    With this flag you will be asking anvi'o to skip them.
  type: boolean
  inputBinding:
    prefix: --skip-variability-tables
- id: compress_auxiliary_data
  doc: When declared, the auxiliary data file in the resulting output will be compressed.
    This saves space, but it takes long. Also, if you are planning to compress the
    entire later using GZIP, it is even useless to do. But you are the boss!
  type: boolean
  inputBinding:
    prefix: --compress-auxiliary-data
- id: collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: bin_id
  doc: Bin name you are interested in.
  type: string
  inputBinding:
    prefix: --bin-id
- id: output_dir
  doc: Directory path for output files
  type: string
  inputBinding:
    prefix: --output-dir
- id: list_collections
  doc: Show available collections and exit.
  type: boolean
  inputBinding:
    prefix: --list-collections
- id: skip_hierarchical_clustering
  doc: If you are not planning to use the interactive interface (or if you have other
    means to add a tree of contigs in the database) you may skip the step where hierarchical
    clustering of your items are preformed based on default clustering recipes matching
    to your database type.
  type: boolean
  inputBinding:
    prefix: --skip-hierarchical-clustering
- id: enforce_hierarchical_clustering
  doc: If you have more than 25,000 splits in your merged profile, anvi-merge will
    automatically skip the hierarchical clustering of splits (by setting --skip- hierarchical-clustering
    flag on). This is due to the fact that computational time required for hierarchical
    clustering increases exponentially with the number of items being clustered. Based
    on our experience we decided that 25,000 splits is about the maximum we should
    try. However, this is not a theoretical limit, and you can overwrite this heuristic
    by using this flag, which would tell anvi'o to attempt to cluster splits regardless.
  type: boolean
  inputBinding:
    prefix: --enforce-hierarchical-clustering
- id: distance
  doc: The distance metric for the hierarchical clustering. If you do not use this
    flag, the default distance metric will be used for each clustering configuration
    which is "euclidean".
  type: string
  inputBinding:
    prefix: --distance
- id: linkage
  doc: The same story with the `--distance`, except, the system default for this one
    is ward.
  type: string
  inputBinding:
    prefix: --linkage
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-split
