version 1.0

task MasonFragSequencing {
  input {
    Boolean? version_check
    Boolean? quiet
    Boolean? verbose
    Boolean? very_verbose
    Int? seed
    String? in
    String? out
    String? out_right
    Boolean? force_single_end
    String? seq_technology
    String? seq_mate_orientation
    String? seq_strands
    Boolean? embed_read_info
    String? read_name_prefix
    Boolean? enable_bs_seq
    String? bs_seq_protocol
    String? bs_seq_conversion_rate
    Int? illumina_read_length
    String? illumina_error_profile_file
    String? illumina_prob_insert
    String? illumina_prob_deletion
    String? illumina_prob_mismatch_scale
    String? illumina_prob_mismatch
    String? illumina_prob_mismatch_begin
    String? illumina_prob_mismatch_end
    String? illumina_position_raise
    String? illumina_quality_mean_begin
    String? illumina_quality_mean_end
    String? illumina_quality_stddev_begin
    String? illumina_quality_stddev_end
    String? illumina_mismatch_quality_mean_begin
    String? illumina_mismatch_quality_mean_end
    String? illumina_mismatch_quality_stddev_begin
    String? illumina_mismatch_quality_stddev_end
    String? illumina_left_template_fast_q
    String? illumina_right_template_fast_q
    String? sanger_read_length_model
    Int? sanger_read_length_min
    Int? sanger_read_length_max
    String? sanger_read_length_mean
    String? sanger_read_length_error
    String? sanger_prob_mismatch_scale
    String? sanger_prob_mismatch_begin
    String? sanger_prob_mismatch_end
    String? sanger_prob_insertion_begin
    String? sanger_prob_insertion_end
    String? sanger_prob_deletion_begin
    String? sanger_prob_deletion_end
    String? sanger_quality_match_start_mean
    String? sanger_quality_match_end_mean
    String? sanger_quality_match_start_stddev
    String? sanger_quality_match_end_stddev
    String? sanger_quality_error_start_mean
    String? sanger_quality_error_end_mean
    String? sanger_quality_error_start_stddev
    String? sanger_quality_error_end_stddev
    String? four_five_four_read_length_model
    Int? four_five_four_read_length_min
    Int? four_five_four_read_length_max
    String? four_five_four_read_length_mean
    String? four_five_four_read_length_stddev
    Boolean? four_five_four_no_sqrt_in_std_dev
    String? four_five_four_proportionality_factor
    String? four_five_four_background_noise_mean
    String? four_five_four_background_noise_stddev
    String fr
    String rf
    String ff
    String ff_two
  }
  command <<<
    mason_frag_sequencing \
      ~{fr} \
      ~{rf} \
      ~{ff} \
      ~{ff_two} \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--very-verbose" false="" very_verbose} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(out_right) then ("--out-right " +  '"' + out_right + '"') else ""} \
      ~{true="--force-single-end" false="" force_single_end} \
      ~{if defined(seq_technology) then ("--seq-technology " +  '"' + seq_technology + '"') else ""} \
      ~{if defined(seq_mate_orientation) then ("--seq-mate-orientation " +  '"' + seq_mate_orientation + '"') else ""} \
      ~{if defined(seq_strands) then ("--seq-strands " +  '"' + seq_strands + '"') else ""} \
      ~{true="--embed-read-info" false="" embed_read_info} \
      ~{if defined(read_name_prefix) then ("--read-name-prefix " +  '"' + read_name_prefix + '"') else ""} \
      ~{true="--enable-bs-seq" false="" enable_bs_seq} \
      ~{if defined(bs_seq_protocol) then ("--bs-seq-protocol " +  '"' + bs_seq_protocol + '"') else ""} \
      ~{if defined(bs_seq_conversion_rate) then ("--bs-seq-conversion-rate " +  '"' + bs_seq_conversion_rate + '"') else ""} \
      ~{if defined(illumina_read_length) then ("--illumina-read-length " +  '"' + illumina_read_length + '"') else ""} \
      ~{if defined(illumina_error_profile_file) then ("--illumina-error-profile-file " +  '"' + illumina_error_profile_file + '"') else ""} \
      ~{if defined(illumina_prob_insert) then ("--illumina-prob-insert " +  '"' + illumina_prob_insert + '"') else ""} \
      ~{if defined(illumina_prob_deletion) then ("--illumina-prob-deletion " +  '"' + illumina_prob_deletion + '"') else ""} \
      ~{if defined(illumina_prob_mismatch_scale) then ("--illumina-prob-mismatch-scale " +  '"' + illumina_prob_mismatch_scale + '"') else ""} \
      ~{if defined(illumina_prob_mismatch) then ("--illumina-prob-mismatch " +  '"' + illumina_prob_mismatch + '"') else ""} \
      ~{if defined(illumina_prob_mismatch_begin) then ("--illumina-prob-mismatch-begin " +  '"' + illumina_prob_mismatch_begin + '"') else ""} \
      ~{if defined(illumina_prob_mismatch_end) then ("--illumina-prob-mismatch-end " +  '"' + illumina_prob_mismatch_end + '"') else ""} \
      ~{if defined(illumina_position_raise) then ("--illumina-position-raise " +  '"' + illumina_position_raise + '"') else ""} \
      ~{if defined(illumina_quality_mean_begin) then ("--illumina-quality-mean-begin " +  '"' + illumina_quality_mean_begin + '"') else ""} \
      ~{if defined(illumina_quality_mean_end) then ("--illumina-quality-mean-end " +  '"' + illumina_quality_mean_end + '"') else ""} \
      ~{if defined(illumina_quality_stddev_begin) then ("--illumina-quality-stddev-begin " +  '"' + illumina_quality_stddev_begin + '"') else ""} \
      ~{if defined(illumina_quality_stddev_end) then ("--illumina-quality-stddev-end " +  '"' + illumina_quality_stddev_end + '"') else ""} \
      ~{if defined(illumina_mismatch_quality_mean_begin) then ("--illumina-mismatch-quality-mean-begin " +  '"' + illumina_mismatch_quality_mean_begin + '"') else ""} \
      ~{if defined(illumina_mismatch_quality_mean_end) then ("--illumina-mismatch-quality-mean-end " +  '"' + illumina_mismatch_quality_mean_end + '"') else ""} \
      ~{if defined(illumina_mismatch_quality_stddev_begin) then ("--illumina-mismatch-quality-stddev-begin " +  '"' + illumina_mismatch_quality_stddev_begin + '"') else ""} \
      ~{if defined(illumina_mismatch_quality_stddev_end) then ("--illumina-mismatch-quality-stddev-end " +  '"' + illumina_mismatch_quality_stddev_end + '"') else ""} \
      ~{if defined(illumina_left_template_fast_q) then ("--illumina-left-template-fastq " +  '"' + illumina_left_template_fast_q + '"') else ""} \
      ~{if defined(illumina_right_template_fast_q) then ("--illumina-right-template-fastq " +  '"' + illumina_right_template_fast_q + '"') else ""} \
      ~{if defined(sanger_read_length_model) then ("--sanger-read-length-model " +  '"' + sanger_read_length_model + '"') else ""} \
      ~{if defined(sanger_read_length_min) then ("--sanger-read-length-min " +  '"' + sanger_read_length_min + '"') else ""} \
      ~{if defined(sanger_read_length_max) then ("--sanger-read-length-max " +  '"' + sanger_read_length_max + '"') else ""} \
      ~{if defined(sanger_read_length_mean) then ("--sanger-read-length-mean " +  '"' + sanger_read_length_mean + '"') else ""} \
      ~{if defined(sanger_read_length_error) then ("--sanger-read-length-error " +  '"' + sanger_read_length_error + '"') else ""} \
      ~{if defined(sanger_prob_mismatch_scale) then ("--sanger-prob-mismatch-scale " +  '"' + sanger_prob_mismatch_scale + '"') else ""} \
      ~{if defined(sanger_prob_mismatch_begin) then ("--sanger-prob-mismatch-begin " +  '"' + sanger_prob_mismatch_begin + '"') else ""} \
      ~{if defined(sanger_prob_mismatch_end) then ("--sanger-prob-mismatch-end " +  '"' + sanger_prob_mismatch_end + '"') else ""} \
      ~{if defined(sanger_prob_insertion_begin) then ("--sanger-prob-insertion-begin " +  '"' + sanger_prob_insertion_begin + '"') else ""} \
      ~{if defined(sanger_prob_insertion_end) then ("--sanger-prob-insertion-end " +  '"' + sanger_prob_insertion_end + '"') else ""} \
      ~{if defined(sanger_prob_deletion_begin) then ("--sanger-prob-deletion-begin " +  '"' + sanger_prob_deletion_begin + '"') else ""} \
      ~{if defined(sanger_prob_deletion_end) then ("--sanger-prob-deletion-end " +  '"' + sanger_prob_deletion_end + '"') else ""} \
      ~{if defined(sanger_quality_match_start_mean) then ("--sanger-quality-match-start-mean " +  '"' + sanger_quality_match_start_mean + '"') else ""} \
      ~{if defined(sanger_quality_match_end_mean) then ("--sanger-quality-match-end-mean " +  '"' + sanger_quality_match_end_mean + '"') else ""} \
      ~{if defined(sanger_quality_match_start_stddev) then ("--sanger-quality-match-start-stddev " +  '"' + sanger_quality_match_start_stddev + '"') else ""} \
      ~{if defined(sanger_quality_match_end_stddev) then ("--sanger-quality-match-end-stddev " +  '"' + sanger_quality_match_end_stddev + '"') else ""} \
      ~{if defined(sanger_quality_error_start_mean) then ("--sanger-quality-error-start-mean " +  '"' + sanger_quality_error_start_mean + '"') else ""} \
      ~{if defined(sanger_quality_error_end_mean) then ("--sanger-quality-error-end-mean " +  '"' + sanger_quality_error_end_mean + '"') else ""} \
      ~{if defined(sanger_quality_error_start_stddev) then ("--sanger-quality-error-start-stddev " +  '"' + sanger_quality_error_start_stddev + '"') else ""} \
      ~{if defined(sanger_quality_error_end_stddev) then ("--sanger-quality-error-end-stddev " +  '"' + sanger_quality_error_end_stddev + '"') else ""} \
      ~{if defined(four_five_four_read_length_model) then ("--454-read-length-model " +  '"' + four_five_four_read_length_model + '"') else ""} \
      ~{if defined(four_five_four_read_length_min) then ("--454-read-length-min " +  '"' + four_five_four_read_length_min + '"') else ""} \
      ~{if defined(four_five_four_read_length_max) then ("--454-read-length-max " +  '"' + four_five_four_read_length_max + '"') else ""} \
      ~{if defined(four_five_four_read_length_mean) then ("--454-read-length-mean " +  '"' + four_five_four_read_length_mean + '"') else ""} \
      ~{if defined(four_five_four_read_length_stddev) then ("--454-read-length-stddev " +  '"' + four_five_four_read_length_stddev + '"') else ""} \
      ~{true="--454-no-sqrt-in-std-dev" false="" four_five_four_no_sqrt_in_std_dev} \
      ~{if defined(four_five_four_proportionality_factor) then ("--454-proportionality-factor " +  '"' + four_five_four_proportionality_factor + '"') else ""} \
      ~{if defined(four_five_four_background_noise_mean) then ("--454-background-noise-mean " +  '"' + four_five_four_background_noise_mean + '"') else ""} \
      ~{if defined(four_five_four_background_noise_stddev) then ("--454-background-noise-stddev " +  '"' + four_five_four_background_noise_stddev + '"') else ""}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the application. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1."
    quiet: "Low verbosity."
    verbose: "Higher verbosity."
    very_verbose: "Highest verbosity."
    seed: "Seed to use for random number generator. Default: 0."
    in: "Path to input file. Valid filetypes are: .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], .embl[.*], and .bam, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    out: "Output of single-end/left end reads. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], and .bam, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    out_right: "Output of right reads. Giving this options enables paired-end simulation. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], and .bam, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    force_single_end: "Force single-end simulation although --out-right is given."
    seq_technology: "Set sequencing technology to simulate. One of illumina, 454, and sanger. Default: illumina."
    seq_mate_orientation: "Orientation for paired reads. See section Read Orientation below. One of FR, RF, FF, and FF2. Default: FR."
    seq_strands: "Strands to simulate from, only applicable to paired sequencing simulation. One of forward, reverse, and both. Default: both."
    embed_read_info: "Whether or not to embed read information."
    read_name_prefix: "Read names will have this prefix. Default: simulated.."
    enable_bs_seq: "Enable BS-seq simulation."
    bs_seq_protocol: "Protocol to use for BS-Seq simulation. One of directional and undirectional. Default: directional."
    bs_seq_conversion_rate: "Conversion rate for unmethylated Cs to become Ts. In range [0..1]. Default: 0.99."
    illumina_read_length: "Read length for Illumina simulation. In range [1..inf]. Default: 100."
    illumina_error_profile_file: "Path to file with Illumina error profile. The file must be a text file with floating point numbers separated by space, each giving a positional error rate. Valid filetype is: .txt."
    illumina_prob_insert: "Insert per-base probability for insertion in Illumina sequencing. In range [0..1]. Default: 0.00005."
    illumina_prob_deletion: "Insert per-base probability for deletion in Illumina sequencing. In range [0..1]. Default: 0.00005."
    illumina_prob_mismatch_scale: "Scaling factor for Illumina mismatch probability. In range [0..inf]. Default: 1.0."
    illumina_prob_mismatch: "Average per-base mismatch probability in Illumina sequencing. In range [0.0..1.0]. Default: 0.004."
    illumina_prob_mismatch_begin: "Per-base mismatch probability of first base in Illumina sequencing. In range [0.0..1.0]. Default: 0.002."
    illumina_prob_mismatch_end: "Per-base mismatch probability of last base in Illumina sequencing. In range [0.0..1.0]. Default: 0.012."
    illumina_position_raise: "Point where the error curve raises in relation to read length. In range [0.0..1.0]. Default: 0.66."
    illumina_quality_mean_begin: "Mean PHRED quality for non-mismatch bases of first base in Illumina sequencing. Default: 40.0."
    illumina_quality_mean_end: "Mean PHRED quality for non-mismatch bases of last base in Illumina sequencing. Default: 39.5."
    illumina_quality_stddev_begin: "Standard deviation of PHRED quality for non-mismatch bases of first base in Illumina sequencing. Default: 0.05."
    illumina_quality_stddev_end: "Standard deviation of PHRED quality for non-mismatch bases of last base in Illumina sequencing. Default: 10.0."
    illumina_mismatch_quality_mean_begin: "Mean PHRED quality for mismatch bases of first base in Illumina sequencing. Default: 40.0."
    illumina_mismatch_quality_mean_end: "Mean PHRED quality for mismatch bases of last base in Illumina sequencing. Default: 30.0."
    illumina_mismatch_quality_stddev_begin: "Standard deviation of PHRED quality for mismatch bases of first base in Illumina sequencing. Default: 3.0."
    illumina_mismatch_quality_stddev_end: "Standard deviation of PHRED quality for mismatch bases of last base in Illumina sequencing. Default: 15.0."
    illumina_left_template_fast_q: "FASTQ file to use for a template for left-end reads. Valid filetypes are: .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], .embl[.*], and .bam, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    illumina_right_template_fast_q: "FASTQ file to use for a template for right-end reads. Valid filetypes are: .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], .embl[.*], and .bam, where * is any of the following extensions: gz and bgzf for transparent (de)compression."
    sanger_read_length_model: "The model to use for sampling the Sanger read length. One of normal and uniform. Default: normal."
    sanger_read_length_min: "The minimal read length when the read length is sampled uniformly. In range [0..inf]. Default: 400."
    sanger_read_length_max: "The maximal read length when the read length is sampled uniformly. In range [0..inf]. Default: 600."
    sanger_read_length_mean: "The mean read length when the read length is sampled with normal distribution. In range [0..inf]. Default: 400."
    sanger_read_length_error: "The read length standard deviation when the read length is sampled uniformly. In range [0..inf]. Default: 40."
    sanger_prob_mismatch_scale: "Scaling factor for Sanger mismatch probability. In range [0..inf]. Default: 1.0."
    sanger_prob_mismatch_begin: "Per-base mismatch probability of first base in Sanger sequencing. In range [0.0..1.0]. Default: 0.005."
    sanger_prob_mismatch_end: "Per-base mismatch probability of last base in Sanger sequencing. In range [0.0..1.0]. Default: 0.001."
    sanger_prob_insertion_begin: "Per-base insertion probability of first base in Sanger sequencing. In range [0.0..1.0]. Default: 0.0025."
    sanger_prob_insertion_end: "Per-base insertion probability of last base in Sanger sequencing. In range [0.0..1.0]. Default: 0.005."
    sanger_prob_deletion_begin: "Per-base deletion probability of first base in Sanger sequencing. In range [0.0..1.0]. Default: 0.0025."
    sanger_prob_deletion_end: "Per-base deletion probability of last base in Sanger sequencing. In range [0.0..1.0]. Default: 0.005."
    sanger_quality_match_start_mean: "Mean PHRED quality for non-mismatch bases of first base in Sanger sequencing. Default: 40.0."
    sanger_quality_match_end_mean: "Mean PHRED quality for non-mismatch bases of last base in Sanger sequencing. Default: 39.5."
    sanger_quality_match_start_stddev: "Mean PHRED quality for non-mismatch bases of first base in Sanger sequencing. Default: 0.1."
    sanger_quality_match_end_stddev: "Mean PHRED quality for non-mismatch bases of last base in Sanger sequencing. Default: 2."
    sanger_quality_error_start_mean: "Mean PHRED quality for erroneous bases of first base in Sanger sequencing. Default: 30."
    sanger_quality_error_end_mean: "Mean PHRED quality for erroneous bases of last base in Sanger sequencing. Default: 20."
    sanger_quality_error_start_stddev: "Mean PHRED quality for erroneous bases of first base in Sanger sequencing. Default: 2."
    sanger_quality_error_end_stddev: "Mean PHRED quality for erroneous bases of last base in Sanger sequencing. Default: 5."
    four_five_four_read_length_model: "The model to use for sampling the 454 read length. One of normal and uniform. Default: normal."
    four_five_four_read_length_min: "The minimal read length when the read length is sampled uniformly. In range [0..inf]. Default: 10."
    four_five_four_read_length_max: "The maximal read length when the read length is sampled uniformly. In range [0..inf]. Default: 600."
    four_five_four_read_length_mean: "The mean read length when the read length is sampled with normal distribution. In range [0..inf]. Default: 400."
    four_five_four_read_length_stddev: "The read length standard deviation when the read length is sampled with normal distribution. In range [0..inf]. Default: 40."
    four_five_four_no_sqrt_in_std_dev: "For error model, if set then (sigma = k * r)) is used, otherwise (sigma = k * sqrt(r))."
    four_five_four_proportionality_factor: "Proportionality factor for calculating the standard deviation proportional to the read length. In range [0..inf]. Default: 0.15."
    four_five_four_background_noise_mean: "Mean of lognormal distribution to use for the noise. In range [0..inf]. Default: 0.23."
    four_five_four_background_noise_stddev: "Standard deviation of lognormal distribution to use for the noise. In range [0..inf]. Default: 0.15."
    fr: "Reads are inward-facing, the same as Illumina paired-end reads: R1 --> <-- R2."
    rf: "Reads are outward-facing, the same as Illumina mate-pair reads: R1 <-- --> R2."
    ff: "Reads are on the same strand: R1 --> --> R2."
    ff_two: "Reads are on the same strand but the \"right\" reads are sequenced to the left of the \"left\" reads, same as 454 paired: R2 --> --> R1."
  }
}