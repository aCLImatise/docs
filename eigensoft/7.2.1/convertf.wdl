version 1.0

task Convertf {
  input {
    String bad
    String params_dot_dot_dot_dot
  }
  command <<<
    convertf \
      ~{bad} \
      ~{params_dot_dot_dot_dot}
  >>>
  parameter_meta {
    bad: ""
    params_dot_dot_dot_dot: ""
  }
}