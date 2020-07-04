version 1.0

task MbBsfinderInputfile {
  input {
    String? threshold
    Int? min_cov
    String mb_bs_finder
  }
  command <<<
    mb-bsfinder inputfile \
      ~{mb_bs_finder} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""}
  >>>
  parameter_meta {
    threshold: ""
    min_cov: ""
    mb_bs_finder: ""
  }
}