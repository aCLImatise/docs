version 1.0

task Dadaist2addTaxToFasta {
  command <<<
    dadaist2_addTaxToFasta
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.7.7--hdfd78af_1"
  }
  output {
    File out_stdout = stdout()
  }
}