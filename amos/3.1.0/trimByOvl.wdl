version 1.0

task TrimByOvl {
  input {
    File file_do_to_vl
    String? n
  }
  command <<<
    trimByOvl \
      ~{file_do_to_vl} \
      ~{n}
  >>>
  parameter_meta {
    file_do_to_vl: ""
    n: ""
  }
}