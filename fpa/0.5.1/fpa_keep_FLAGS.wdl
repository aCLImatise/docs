version 1.0

task FpaKeepFLAGS {
  input {
    String? var_input
    String? var_output
    String fpa
  }
  command <<<
    fpa keep FLAGS \
      ~{fpa} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""}
  >>>
  parameter_meta {
    var_input: ""
    var_output: ""
    fpa: ""
  }
}