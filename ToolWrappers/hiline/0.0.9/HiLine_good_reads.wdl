version 1.0

task HiLineGoodreads {
  input {
    Boolean? no_sort
    String var_output
  }
  command <<<
    HiLine good_reads \
      ~{var_output} \
      ~{if (no_sort) then "--no-sort" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_sort: "Sort and index output. Default=sort"
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}