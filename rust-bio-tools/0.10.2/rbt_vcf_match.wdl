version 1.0

task RbtVcfMatch {
  input {
    Int? max_dist
    Int? max_len_diff
    String vcf
  }
  command <<<
    rbt vcf-match \
      ~{vcf} \
      ~{if defined(max_dist) then ("--max-dist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(max_len_diff) then ("--max-len-diff " +  '"' + max_len_diff + '"') else ""}
  >>>
  parameter_meta {
    max_dist: "Maximum distance between centres of two indels considered to match. [default: 20]"
    max_len_diff: "Maximum difference between lengths of two indels. [default: 10]"
    vcf: ""
  }
}