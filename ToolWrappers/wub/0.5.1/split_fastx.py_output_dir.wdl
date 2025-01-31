version 1.0

task SplitFastxpyOutputDir {
  input {
    Int? b
    String? o
    String? i
    String split_fast_x_do_tpy
  }
  command <<<
    split_fastx_py output_dir \
      ~{split_fast_x_do_tpy} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    b: ""
    o: ""
    i: ""
    split_fast_x_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}