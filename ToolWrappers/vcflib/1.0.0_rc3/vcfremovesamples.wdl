version 1.0

task Vcfremovesamples {
  input {
    File vcf_file
    Int? sample_one
    Int? sample_two
  }
  command <<<
    vcfremovesamples \
      ~{vcf_file} \
      ~{sample_one} \
      ~{sample_two}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_file: ""
    sample_one: ""
    sample_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}