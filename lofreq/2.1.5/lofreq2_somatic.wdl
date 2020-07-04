version 1.0

task Lofreq2Somatic.py {
  input {
    Boolean? verbose
    String? normal
    String? tumor
    String? out_prefix
    String? ref
    String? bed
    String? dbsnp
    String? threads
    String? tumor_mtc
    String? tumor_mtc_alpha
    String? in_del_tumor_mtc
    String? in_del_tumor_mtc_alpha
    Boolean? call_indels
    Int? min_cov
    Boolean? germline
    String? ign_vcf
    Boolean? use_orphan
    Boolean? baq_off
    String? call_rlx_extra_args
    Boolean? no_src_qual
    Boolean? debug
    Boolean? continue
    String lo_freq
    String somatic
  }
  command <<<
    lofreq2_somatic.py \
      ~{lo_freq} \
      ~{somatic} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(normal) then ("--normal " +  '"' + normal + '"') else ""} \
      ~{if defined(tumor) then ("--tumor " +  '"' + tumor + '"') else ""} \
      ~{if defined(out_prefix) then ("--outprefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(dbsnp) then ("--dbsnp " +  '"' + dbsnp + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tumor_mtc) then ("--tumor-mtc " +  '"' + tumor_mtc + '"') else ""} \
      ~{if defined(tumor_mtc_alpha) then ("--tumor-mtc-alpha " +  '"' + tumor_mtc_alpha + '"') else ""} \
      ~{if defined(in_del_tumor_mtc) then ("--indel-tumor-mtc " +  '"' + in_del_tumor_mtc + '"') else ""} \
      ~{if defined(in_del_tumor_mtc_alpha) then ("--indel-tumor-mtc-alpha " +  '"' + in_del_tumor_mtc_alpha + '"') else ""} \
      ~{true="--call-indels" false="" call_indels} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{true="--germline" false="" germline} \
      ~{if defined(ign_vcf) then ("--ign-vcf " +  '"' + ign_vcf + '"') else ""} \
      ~{true="--use-orphan" false="" use_orphan} \
      ~{true="--baq-off" false="" baq_off} \
      ~{if defined(call_rlx_extra_args) then ("--call-rlx-extra-args " +  '"' + call_rlx_extra_args + '"') else ""} \
      ~{true="--no-src-qual" false="" no_src_qual} \
      ~{true="--debug" false="" debug} \
      ~{true="--continue" false="" continue}
  >>>
  parameter_meta {
    verbose: "Be verbose"
    normal: "Normal BAM file"
    tumor: "Tumor BAM file"
    out_prefix: "Prefix for output files"
    ref: "Reference fasta file"
    bed: "BED file listing regions to restrict analysis to"
    dbsnp: "vcf-file (bgzipped and index with tabix) containing known germline variants (e.g. dbsnp for human"
    threads: "Use this many threads for each call"
    tumor_mtc: "Type of multiple testing correction for tumor (default: bonf)"
    tumor_mtc_alpha: "Multiple testing correction alpha for tumor (default: 1.000000)"
    in_del_tumor_mtc: "Type of multiple testing correction for tumor (default: bonf)"
    in_del_tumor_mtc_alpha: "Multiple testing correction alpha for tumor (default: 0.010000)"
    call_indels: "Also call indels (see documentation on how to preprocess your BAM files)"
    min_cov: "Minimum coverage for somatic calls (default: 7)"
    germline: "Also list germline calls in separate file"
    ign_vcf: "Ignore variants in this vcf-file for source quality computation in tumor (collides with --no-src-qual). Default is to use (stringently filtered) predictions in normal sample"
    use_orphan: "Use orphaned/anomalous reads from pairs in all samples"
    baq_off: "Switch use of BAQ off in all samples"
    call_rlx_extra_args: "Extra arguments to call_rlx (replace dashes with @)"
    no_src_qual: "Disable use of source quality in tumor (see also -V)"
    debug: "Enable debugging"
    continue: "continue interrupted run. Will reuse existing files, assuming they are complete and created with identical options!"
    lo_freq: ""
    somatic: ""
  }
}