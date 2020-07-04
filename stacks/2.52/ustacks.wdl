version 1.0

task Ustacks {
  input {
    Boolean? keep_high_cov
    Boolean? high_cov_th_res
    String? max_locus_stacks
    String? k_len
    Boolean? max_gaps
    Boolean? min_aln_len
    Boolean? disable_gapped
    String? alpha
    String? bound_low
    String? bound_high
    String? bc_err_freq
  }
  command <<<
    ustacks \
      ~{true="--keep-high-cov" false="" keep_high_cov} \
      ~{true="--high-cov-thres" false="" high_cov_th_res} \
      ~{if defined(max_locus_stacks) then ("--max-locus-stacks " +  '"' + max_locus_stacks + '"') else ""} \
      ~{if defined(k_len) then ("--k-len " +  '"' + k_len + '"') else ""} \
      ~{true="--max-gaps" false="" max_gaps} \
      ~{true="--min-aln-len" false="" min_aln_len} \
      ~{true="--disable-gapped" false="" disable_gapped} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(bound_low) then ("--bound-low " +  '"' + bound_low + '"') else ""} \
      ~{if defined(bound_high) then ("--bound-high " +  '"' + bound_high + '"') else ""} \
      ~{if defined(bc_err_freq) then ("--bc-err-freq " +  '"' + bc_err_freq + '"') else ""}
  >>>
  parameter_meta {
    keep_high_cov: ": disable the algorithm that removes highly-repetitive stacks and nearby errors."
    high_cov_th_res: ": highly-repetitive stacks threshold, in standard deviation units (default: 3.0)."
    max_locus_stacks: ": maximum number of stacks at a single de novo locus (default 3)."
    k_len: ": specify k-mer size for matching between alleles and loci (automatically calculated by default)."
    max_gaps: ": number of gaps allowed between stacks before merging (default: 2)."
    min_aln_len: ": minimum length of aligned sequence in a gapped alignment (default: 0.80)."
    disable_gapped: ": do not preform gapped alignments between stacks (default: gapped alignements enabled)."
    alpha: ": chi square significance level required to call a heterozygote or homozygote, either 0.1, 0.05 (default), 0.01, or 0.001."
    bound_low: ": lower bound for epsilon, the error rate, between 0 and 1.0 (default 0)."
    bound_high: ": upper bound for epsilon, the error rate, between 0 and 1.0 (default 1)."
    bc_err_freq: ": specify the barcode error frequency, between 0 and 1.0."
  }
}