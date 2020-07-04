version 1.0

task MaltRun {
  input {
    Boolean? mode
    Boolean? alignment_type
    Boolean? in_file
    Boolean? index
    Boolean? output_rma_files
    Boolean? include_unaligned
    Boolean? alignments
    Boolean? format
    Boolean? gzip_alignments
    Boolean? sam_soft_clip
    Boolean? sparse_sam
    Boolean? out_aligned
    Boolean? gzip_aligned
    Boolean? out_unaligned
    Boolean? gzip_unaligned
    Boolean? num_threads
    Boolean? memory_mode
    Boolean? max_tables
    Boolean? replicate_query_cache
    Boolean? min_bit_score
    Boolean? max_expected
    Boolean? min_percent_identity
    Boolean? max_alignments_per_query
    Boolean? max_alignments_per_ref
    Boolean? match_score
    Boolean? mismatch_score
    Boolean? set_lambda
    Boolean? set_k
    Boolean? submatrix
    Boolean? forward_only
    Boolean? reverse_only
    Boolean? top_percent
    Boolean? min_support_percent
    Boolean? min_support
    Boolean? min_percent_identity_lca
    Boolean? use_min_percent_identity_filter_lca
    Boolean? weighted_lca
    Boolean? lca_coverage_percent
    Boolean? magnitudes
    Boolean? con_file
    Boolean? max_seeds_per_frame
    Boolean? max_seeds_per_ref
    Boolean? seed_shift
    Boolean? gap_open
    Boolean? gap_extend
    Boolean? band
    Boolean? replicate_query_cache_bits
    Boolean? x_part
    Boolean? verbose
  }
  command <<<
    malt-run \
      ~{true="--mode" false="" mode} \
      ~{true="--alignmentType" false="" alignment_type} \
      ~{true="--inFile" false="" in_file} \
      ~{true="--index" false="" index} \
      ~{true="--output" false="" output_rma_files} \
      ~{true="--includeUnaligned" false="" include_unaligned} \
      ~{true="--alignments" false="" alignments} \
      ~{true="--format" false="" format} \
      ~{true="--gzipAlignments" false="" gzip_alignments} \
      ~{true="--samSoftClip" false="" sam_soft_clip} \
      ~{true="--sparseSAM" false="" sparse_sam} \
      ~{true="--outAligned" false="" out_aligned} \
      ~{true="--gzipAligned" false="" gzip_aligned} \
      ~{true="--outUnaligned" false="" out_unaligned} \
      ~{true="--gzipUnaligned" false="" gzip_unaligned} \
      ~{true="--numThreads" false="" num_threads} \
      ~{true="--memoryMode" false="" memory_mode} \
      ~{true="--maxTables" false="" max_tables} \
      ~{true="--replicateQueryCache" false="" replicate_query_cache} \
      ~{true="--minBitScore" false="" min_bit_score} \
      ~{true="--maxExpected" false="" max_expected} \
      ~{true="--minPercentIdentity" false="" min_percent_identity} \
      ~{true="--maxAlignmentsPerQuery" false="" max_alignments_per_query} \
      ~{true="--maxAlignmentsPerRef" false="" max_alignments_per_ref} \
      ~{true="--matchScore" false="" match_score} \
      ~{true="--mismatchScore" false="" mismatch_score} \
      ~{true="--setLambda" false="" set_lambda} \
      ~{true="--setK" false="" set_k} \
      ~{true="--subMatrix" false="" submatrix} \
      ~{true="--forwardOnly" false="" forward_only} \
      ~{true="--reverseOnly" false="" reverse_only} \
      ~{true="--topPercent" false="" top_percent} \
      ~{true="--minSupportPercent" false="" min_support_percent} \
      ~{true="--minSupport" false="" min_support} \
      ~{true="--minPercentIdentityLCA" false="" min_percent_identity_lca} \
      ~{true="--useMinPercentIdentityFilterLCA" false="" use_min_percent_identity_filter_lca} \
      ~{true="--weightedLCA" false="" weighted_lca} \
      ~{true="--lcaCoveragePercent" false="" lca_coverage_percent} \
      ~{true="--magnitudes" false="" magnitudes} \
      ~{true="--conFile" false="" con_file} \
      ~{true="--maxSeedsPerFrame" false="" max_seeds_per_frame} \
      ~{true="--maxSeedsPerRef" false="" max_seeds_per_ref} \
      ~{true="--seedShift" false="" seed_shift} \
      ~{true="--gapOpen" false="" gap_open} \
      ~{true="--gapExtend" false="" gap_extend} \
      ~{true="--band" false="" band} \
      ~{true="--replicateQueryCacheBits" false="" replicate_query_cache_bits} \
      ~{true="--xPart" false="" x_part} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    mode: "[string]                  Program mode. Mandatory option. Legal values: Unknown, BlastN, BlastP, BlastX, Classifier"
    alignment_type: "[string]        Type of alignment to be performed. Default value: Local. Legal values: Local, SemiGlobal"
    in_file: "[string(s)]             Input file(s) containing queries in FastA or FastQ format (gzip or zip ok). Mandatory option."
    index: "[string]                 Index directory as generated by MaltBuild. Mandatory option."
    output_rma_files: "[string(s)]             Output RMA file(s) or directory. "
    include_unaligned: "Include unaligned queries in RMA output file. Default value: false."
    alignments: "[string(s)]         Output alignment file(s) or directory or STDOUT. "
    format: "[string]                Alignment output format. Default value: SAM. Legal values: SAM, Tab, Text"
    gzip_alignments: "Compress alignments using gzip. Default value: true."
    sam_soft_clip: "Use soft clipping in SAM files (BlastN mode only). Default value: false."
    sparse_sam: "Produce sparse SAM format (smaller, faster, but only suitable for MEGAN). Default value: false."
    out_aligned: "[string(s)]        Aligned reads output file(s) or directory or STDOUT. "
    gzip_aligned: "Compress aligned reads output using gzip. Default value: true."
    out_unaligned: "[string(s)]      Unaligned reads output file(s) or directory or STDOUT. "
    gzip_unaligned: "Compress unaligned reads output using gzip. Default value: true."
    num_threads: "[number]            Number of worker threads. Default value: 8."
    memory_mode: "[string]          Memory mode. Default value: load. Legal values: load, page, map"
    max_tables: "[number]            Set the maximum number of seed tables to use (0=all). Default value: 0."
    replicate_query_cache: "Cache results for replicated queries. Default value: false."
    min_bit_score: "[number]           Minimum bit score. Default value: 50.0."
    max_expected: "[number]           Maximum expected score. Default value: 1.0."
    min_percent_identity: "[number]   Minimum percent identity. Default value: 0.0."
    max_alignments_per_query: "[number]   Maximum number of alignments per query. Default value: 25."
    max_alignments_per_ref: "[number]   Maximum number of (non-overlapping) alignments per reference. Default value: 1."
    match_score: "[number]           Match score. Default value: 2."
    mismatch_score: "[number]        Mismatch score. Default value: -3."
    set_lambda: "[number]            Parameter Lambda for BLASTN statistics. Default value: 0.625."
    set_k: "[number]                  Parameter K for BLASTN statistics. Default value: 0.41."
    submatrix: "[string]           Protein substitution matrix to use. Default value: BLOSUM62. Legal values: BLOSUM45, BLOSUM50, BLOSUM62, BLOSUM80, BLOSUM90"
    forward_only: "Align query forward strand only. Default value: false."
    reverse_only: "Align query reverse strand only. Default value: false."
    top_percent: "[number]          Top percent value for LCA algorithm. Default value: 10.0."
    min_support_percent: "[number]   Min support value for LCA algorithm as a percent of assigned reads (0==off). Default value: 0.001."
    min_support: "[number]          Min support value for LCA algorithm (overrides --minSupportPercent). Default value: 0."
    min_percent_identity_lca: "[number]   Min percent identity used by LCA algorithm. Default value: 0.0."
    use_min_percent_identity_filter_lca: "Use percent identity assignment filter. Default value: false."
    weighted_lca: "Use the weighted LCA for taxonomic assignment. Default value: false."
    lca_coverage_percent: "[number]   Set the percent for the LCA to cover. Default value: 100.0."
    magnitudes: "Reads have magnitudes (to be used in taxonomic or functional analysis). Default value: false."
    con_file: "[string]              File of contaminant taxa (one Id or name per line). "
    max_seeds_per_frame: "[number]    Maximum number of seed matches per offset per read frame. Default value: 100."
    max_seeds_per_ref: "[number]      Maximum number of seed matches per read and reference. Default value: 20."
    seed_shift: "[number]            Seed shift. Default value: 1."
    gap_open: "[number]              Gap open penalty. Default value: 11."
    gap_extend: "[number]            Gap extension penalty. Default value: 1."
    band: "[number]                 Band width/2 for banded alignment. Default value: 4."
    replicate_query_cache_bits: "[number]   Bits used for caching replicate queries (size is then 2^bits). Default value: 20."
    x_part: "Show part of the table in human readable form for debugging. Default value: false."
    verbose: "Echo commandline options and be verbose. Default value: false."
  }
}