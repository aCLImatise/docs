version 1.0

task SanityCheckMatureRef.pl.orig {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    sanity_check_mature_ref.pl.orig \
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