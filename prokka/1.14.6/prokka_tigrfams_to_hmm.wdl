version 1.0

task ProkkaTigrfamsToHmm {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    prokka-tigrfams_to_hmm \
      ~{no} \
      ~{such} \
      ~{file} \
      ~{or} \
      ~{directory} \
      ~{at}
  >>>
  parameter_meta {
    no: ""
    such: ""
    file: ""
    or: ""
    directory: ""
    at: ""
  }
}