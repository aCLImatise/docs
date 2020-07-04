version 1.0

task Bam2sam {
  input {
    Boolean? no_header
    Boolean? header_only
    String in_dot_bam
  }
  command <<<
    bam2sam \
      ~{in_dot_bam} \
      ~{true="--no-header" false="" no_header} \
      ~{true="--header-only" false="" header_only}
  >>>
  parameter_meta {
    no_header: "Omit header from output."
    header_only: "Print only the header (no records)."
    in_dot_bam: "FILE  Input BAM file. If not provided, stdin will be used as input."
  }
}