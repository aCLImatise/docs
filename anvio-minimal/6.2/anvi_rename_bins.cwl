class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_rename_bins.cwl
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
- id: collection_to_read
  doc: Collection name to read from. Anvi'o will not overwrite an existing collection,
    instead, it will create a copy of your collection with new bin names.
  type: string
  inputBinding:
    prefix: --collection-to-read
- id: collection_to_write
  doc: The new collection name. Give it a nice, fancy name.
  type: string
  inputBinding:
    prefix: --collection-to-write
- id: prefix
  doc: Prefix for the bin names. Must be a single word, composed of digits and numbers.
    The use of the underscore character is OK, but that's about it (fine, the use
    of the dash character is OK, too but no more!). If the prefix is 'PREFIX', each
    bin will be renamed as 'PREFIX_XXX_00001, PREFIX_XXX_00002', and so on, in the
    order of percent completion minus percent redundancy (what we call, 'substantive
    completion'). The 'XXX' part will either be 'Bin', or 'MAG depending on other
    parameters you use. Keep reading.
  type: string
  inputBinding:
    prefix: --prefix
- id: report_file
  doc: This file will report each name change event, so you can trace back the original
    names of renamed bins later.
  type: string
  inputBinding:
    prefix: --report-file
- id: list_collections
  doc: Show available collections and exit.
  type: boolean
  inputBinding:
    prefix: --list-collections
- id: dry_run
  doc: When used does NOT update the profile database, just creates the report file
    so you can view how things will be renamed.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: size_for_mag
  doc: If --call-MAGs flag is used, call any bin a 'MAG' if their redundancy estimate
    is less than --max- redundancy-for-MAG, AND THEIR SIZE IS LARGER THAN THIS VALUE
    REGARDLESS OF THE COMPLETION ESTIMATE. The default behavior is to not care about
    this at all.
  type: string
  inputBinding:
    prefix: --size-for-MAG
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-rename-bins
