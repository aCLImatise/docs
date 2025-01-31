version 1.0

task MegahitCoreNoHwAccelFilterbylen {
  input {
    String cat
    String contigs_dot_fa
  }
  command <<<
    megahit_core_no_hw_accel filterbylen \
      ~{cat} \
      ~{contigs_dot_fa}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cat: ""
    contigs_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}