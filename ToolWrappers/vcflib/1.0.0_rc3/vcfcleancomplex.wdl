version 1.0

task Vcfcleancomplex {
  input {
    File vcf_file
  }
  command <<<
    vcfcleancomplex \
      ~{vcf_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}