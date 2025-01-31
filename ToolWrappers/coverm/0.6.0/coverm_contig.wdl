version 1.0

task CovermContig {
  input {
    String? coupled
    String? contig_end_exclusion
  }
  command <<<
    coverm contig \
      ~{if defined(coupled) then ("--coupled " +  '"' + coupled + '"') else ""} \
      ~{if defined(contig_end_exclusion) then ("--contig-end-exclusion " +  '"' + contig_end_exclusion + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coverm:0.6.0--hc216eb9_0"
  }
  parameter_meta {
    coupled: ""
    contig_end_exclusion: ""
  }
  output {
    File out_stdout = stdout()
  }
}