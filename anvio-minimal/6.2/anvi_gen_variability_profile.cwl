class: CommandLineTool
id: ../../../anvi_gen_variability_profile.cwl
inputs:
- id: profile_db
  doc: Anvi'o profile database
  type: string
  inputBinding:
    prefix: --profile-db
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: structure_db
  doc: Anvi'o structure database.
  type: string
  inputBinding:
    prefix: --structure-db
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
- id: splits_of_interest
  doc: A file with split names. There should be only one column in the file, and each
    line should correspond to a unique split name.
  type: File
  inputBinding:
    prefix: --splits-of-interest
- id: genes_of_interest
  doc: A file with anvi'o gene caller IDs. There should be only one column in the
    file, and each line should correspond to a unique gene caller id (without a column
    header).
  type: File
  inputBinding:
    prefix: --genes-of-interest
- id: gene_caller_ids
  doc: Gene caller ids. Multiple of them can be declared separated by a delimiter
    (the default is a comma). In anvi-gen-variability-profile, if you declare nothing
    you will get all genes matching your other filtering criteria. In other programs,
    you may get everything, nothing, or an error. It really depends on the situation.
    Fortunately, mistakes are cheap, so it's worth a try.
  type: string
  inputBinding:
    prefix: --gene-caller-ids
- id: only_if_structure
  doc: If provided, your genes of interest will be further subset to only include
    genes with structures in your structure database, and therefore must be supplied
    in conjunction with a structure database, i.e. `-s <your_structure_database>`.
    If you did not specify genes of interest, ALL genes will be subset to those that
    have structures.
  type: boolean
  inputBinding:
    prefix: --only-if-structure
- id: samples_of_interest
  doc: A file with samples names. There should be only one column in the file, and
    each line should correspond to a unique sample name (without a column header).
  type: File
  inputBinding:
    prefix: --samples-of-interest
- id: engine
  doc: Variability engine. The default is 'NT'.
  type: string
  inputBinding:
    prefix: --engine
- id: skip_synonym_ity
  doc: Computing synonymity can be an expensive operation for large data sets. Provide
    this flag to skip computing synonymity. It only makes sense to provide this flag
    when using --engine CDN.
  type: boolean
  inputBinding:
    prefix: --skip-synonymity
- id: num_positions_from_each_split
  doc: Each split may have one or more variable positions. By default, anvi'o will
    report every SNV position found in a given split. This parameter will help you
    to define a cutoff for the maximum number of SNVs to be reported from a split
    (if the number of SNVs is more than the number you declare using this parameter,
    the positions will be randomly subsampled).
  type: long
  inputBinding:
    prefix: --num-positions-from-each-split
- id: min_departure_from_reference
  doc: Takes a value between 0 and 1, where 1 is maximum divergence from the reference.
    Default is 0.000000. The reference here observation that corresponds to a given
    position in the mapped context.
  type: double
  inputBinding:
    prefix: --min-departure-from-reference
- id: max_departure_from_reference
  doc: Similar to '--min-departure-from-reference', but defines an upper limit for
    divergence. The default is 1.000000.
  type: double
  inputBinding:
    prefix: --max-departure-from-reference
- id: min_departure_from_consensus
  doc: Takes a value between 0 and 1, where 1 is maximum divergence from the consensus
    for a given position. The default is 0.000000. The consensus is the most frequent
    observation at a given position.
  type: double
  inputBinding:
    prefix: --min-departure-from-consensus
- id: max_departure_from_consensus
  doc: Similar to '--min-departure-from-consensus', but defines an upper limit for
    divergence. The default is 1.000000.
  type: double
  inputBinding:
    prefix: --max-departure-from-consensus
- id: min_occurrence
  doc: Minimum number of samples a nucleotide position should be reported as variable.
    Default is 1. If you set it to 2, for instance, each eligible variable position
    will be expected to appear in at least two samples, which will reduce the impact
    of stochastic, or unintelligible variable positions.
  type: string
  inputBinding:
    prefix: --min-occurrence
- id: min_coverage_in_each_sample
  doc: Minimum coverage of a given variable nucleotide position in all samples. If
    a nucleotide position is covered less than this value even in one sample, it will
    be removed from the analysis. Default is 0.
  type: long
  inputBinding:
    prefix: --min-coverage-in-each-sample
- id: quince_mode
  doc: The default behavior is to report base frequencies of nucleotide positions
    only if there is any variation reported during profiling (which by default uses
    some heuristics to minimize the impact of error-driven variation). So, if there
    are 10 samples, and a given position has been reported as a variable site during
    profiling in only one of those samples, there will be no information will be stored
    in the database for the remaining 9. When this flag is used, we go back to each
    sample, and report base frequencies for each sample at this position even if they
    do not vary. It will take considerably longer to report when this flag is on,
    and the use of it will increase the file size dramatically, however it is inevitable
    for some statistical approaches (as well as for some beautiful visualizations).
  type: boolean
  inputBinding:
    prefix: --quince-mode
- id: output_file
  doc: File path to store results.
  type: string
  inputBinding:
    prefix: --output-file
- id: include_contig_names
  doc: Use this flag if you would like contig names for each variable position to
    be included in the output file as a column. By default, we do not include contig
    names since they can practically double the output file size without any actual
    benefit in most cases.
  type: boolean
  inputBinding:
    prefix: --include-contig-names
- id: include_split_names
  doc: Use this flag if you would like split names for each variable position to be
    included in the output file as a column.
  type: boolean
  inputBinding:
    prefix: --include-split-names
- id: compute_gene_coverage_stats
  doc: If provided, gene coverage statistics will be appended for each entry in variability
    report. This is very useful information, but will not be included by default because
    it is an expensive operation, and may take some additional time.
  type: boolean
  inputBinding:
    prefix: --compute-gene-coverage-stats
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-gen-variability-profile
