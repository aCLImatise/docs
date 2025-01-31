version 1.0

task HaphpipePhParser {
  input {
    File? haplotypes_fa
    Directory? outdir
    String? prefix
    Boolean? keep_gaps
    Boolean? quiet
    File? log_file
  }
  command <<<
    haphpipe ph_parser \
      ~{if defined(haplotypes_fa) then ("--haplotypes_fa " +  '"' + haplotypes_fa + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (keep_gaps) then "--keep_gaps" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/haphpipe:1.0.3--py_0"
  }
  parameter_meta {
    haplotypes_fa: "Haplotype file created by PredictHaplo."
    outdir: "Output directory. (default: .)"
    prefix: "Prefix to add to sequence names"
    keep_gaps: "Do not remove gaps from alignment (default: False)"
    quiet: "Do not write output to console (silence stdout and\\nstderr) (default: False)"
    log_file: "Append console output to this file"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_log_file = "${in_log_file}"
  }
}