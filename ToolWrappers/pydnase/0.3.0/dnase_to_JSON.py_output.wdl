version 1.0

task DnaseToJSONpyOutput {
  input {
    Boolean? a
    Boolean? i
    Int? w
    String dnase_to_json_do_tpy
    String regions
    String reads
    String var_output
  }
  command <<<
    dnase_to_JSON_py output \
      ~{dnase_to_json_do_tpy} \
      ~{regions} \
      ~{reads} \
      ~{var_output} \
      ~{if (a) then "-A" else ""} \
      ~{if (i) then "-i" else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a: ""
    i: ""
    w: ""
    dnase_to_json_do_tpy: ""
    regions: ""
    reads: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}