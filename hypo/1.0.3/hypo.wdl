version 1.0

task Hypo {
  input {
    String sr
    String ccs
  }
  command <<<
    hypo \
      ~{sr} \
      ~{ccs}
  >>>
  parameter_meta {
    sr: "(Corresponding to NGS reads like Illumina reads) "
    ccs: "(Corresponding to HiFi reads like PacBio CCS reads) "
  }
}