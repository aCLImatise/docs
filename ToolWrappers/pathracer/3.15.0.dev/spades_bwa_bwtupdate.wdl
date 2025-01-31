version 1.0

task SpadesbwaBwtupdate {
  input {
    String bwa
    String bwt_update
    String the_dot_bwt
  }
  command <<<
    spades_bwa bwtupdate \
      ~{bwa} \
      ~{bwt_update} \
      ~{the_dot_bwt}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0"
  }
  parameter_meta {
    bwa: ""
    bwt_update: ""
    the_dot_bwt: ""
  }
  output {
    File out_stdout = stdout()
  }
}