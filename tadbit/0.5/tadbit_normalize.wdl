version 1.0

task TadbitNormalize {
  input {
    File? workdir
    Int? resolution
    File? bam
    Int? jobid
    Int? max_n_jobs
    Boolean? force
    File? tmp_db
    String? cpus
    Boolean? normalize_only
    Boolean? nox
    Float? perc_zeros
    Int? min_count
    Int? min_perc
    Int? max_perc
    Boolean? filter_only
    Boolean? fast_filter
    String? pospos_extra_regions
    Array[Int] filter
    Boolean? valid
    String? normalization
    String? biases_path
    File? mapp_ability
    File? fast_a
    String? renz
    String? factor
    Float? prop_data
    Int? seed
  }
  command <<<
    tadbit normalize \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(jobid) then ("--jobid " +  '"' + jobid + '"') else ""} \
      ~{if defined(max_n_jobs) then ("--max_njobs " +  '"' + max_n_jobs + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(tmp_db) then ("--tmpdb " +  '"' + tmp_db + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{true="--normalize_only" false="" normalize_only} \
      ~{true="--noX" false="" nox} \
      ~{if defined(perc_zeros) then ("--perc_zeros " +  '"' + perc_zeros + '"') else ""} \
      ~{if defined(min_count) then ("--min_count " +  '"' + min_count + '"') else ""} \
      ~{if defined(min_perc) then ("--min_perc " +  '"' + min_perc + '"') else ""} \
      ~{if defined(max_perc) then ("--max_perc " +  '"' + max_perc + '"') else ""} \
      ~{true="--filter_only" false="" filter_only} \
      ~{true="--fast_filter" false="" fast_filter} \
      ~{if defined(pospos_extra_regions) then ("-B " +  '"' + pospos_extra_regions + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{true="--valid" false="" valid} \
      ~{if defined(normalization) then ("--normalization " +  '"' + normalization + '"') else ""} \
      ~{if defined(biases_path) then ("--biases_path " +  '"' + biases_path + '"') else ""} \
      ~{if defined(mapp_ability) then ("--mappability " +  '"' + mapp_ability + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(renz) then ("--renz " +  '"' + renz + '"') else ""} \
      ~{if defined(factor) then ("--factor " +  '"' + factor + '"') else ""} \
      ~{if defined(prop_data) then ("--prop_data " +  '"' + prop_data + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    workdir: "path to working directory (generated with the tool tadbit mapper)"
    resolution: "resolution at which to output matrices"
    bam: "path to a TADbit-generated BAM file with all reads (other wise the tool will guess from the working directory database)"
    jobid: "Use as input data generated by a job with a given jobid. Use tadbit describe to find out which."
    max_n_jobs: "[100] Define maximum number of jobs for reading BAM file (set to higher numbers for large files and low RAM memory)."
    force: "overwrite previously run job"
    tmp_db: "if provided uses this directory to manipulate the database"
    cpus: "[8] Maximum number of CPU cores available in the execution host. If higher than 1, tasks with multi-threading capabilities will enabled (if 0 all available) cores will be used"
    normalize_only: "skip calculation of Cis-percentage and decay"
    nox: "no display server (X screen)"
    perc_zeros: "[95%] maximum percentage of zeroes allowed per column."
    min_count: "[None] minimum number of reads mapped to a bin (recommended value could be 2500). If set this option overrides the perc_zero filtering... This option is slightly slower."
    min_perc: "[None] lower percentile from which consider bins as good."
    max_perc: "[None] upper percentile until which consider bins as good."
    filter_only: "skip normalization"
    fast_filter: "only filter according to the percentage of zero count or minimum count of reads"
    pospos_extra_regions: ":POS1-POS2 [CHR:POS1-POS2 ...], --badcols CHR:POS1-POS2 [CHR:POS1-POS2 ...] extra regions to be added to bad-columns (ingenomic position). e.g.: --badcols 1:150000000-160000000 2:1200000-1300000"
    filter: "[[1, 2, 3, 4, 6, 7, 9, 10]] Use filters to define a set os valid pair of reads e.g.: '--apply 1 2 3 4 8 9 10'. Where these numberscorrespond to: 1: self-circle, 2: dangling-end, 3: error, 4: extra dangling-end, 5: too close from RES, 6: too short, 7: too large, 8: over-represented, 9: duplicated, 10: random breaks, 11: trans-chromosomic"
    valid: "input BAM file contains only valid pairs (already filtered)."
    normalization: "[Vanilla] normalization(s) to apply. Order matters. Choices: Vanilla, ICE, SQRT, oneD, custom"
    biases_path: "biases file to compute decay. REQUIRED with \"custom\" normalization. Format: single column with header"
    mapp_ability: "Path to mappability bedGraph file, required for oneD normalization. Mappability file can be generated with GEM (example from the genomic FASTA file hg38.fa): gem-indexer -i hg38.fa -o hg38 gem-mappability -I hg38.gem -l 50 -o hg38.50mer -T 8 gem-2-wig -I hg38.gem -i hg38.50mer.mappability -o hg38.50mer wigToBigWig hg38.50mer.wig hg38.50mer.sizes hg38.50mer.bw bigWigToBedGraph hg38.50mer.bw  hg38.50mer.bedGraph"
    fast_a: "Path to FASTA file with genome sequence, to compute GC content and number of restriction sites per bin. Required for oneD normalization"
    renz: "restriction enzyme name(s). Required for oneD normalization"
    factor: "[1] target mean value of a cell after normalization (can be used to weight experiments before merging)"
    prop_data: "[1] Only for oneD normalization: proportion of data to be used in fitting (for very large datasets). Number between 0 and 1."
    seed: "[1] Only for oneD normalization: seed number for the random picking of data when using the \"prop_data\" parameter"
  }
}