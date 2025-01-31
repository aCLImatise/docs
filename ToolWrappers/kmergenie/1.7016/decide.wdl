version 1.0

task Decide {
  input {
    Boolean? diploid
    Boolean? first_pass
    Int? number_threads_default
  }
  command <<<
    decide \
      ~{if (diploid) then "--diploid" else ""} \
      ~{if (first_pass) then "--first_pass" else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    diploid: "use the diploid model"
    first_pass: "do not display 'best k' at the end, inform user of rough estimation"
    number_threads_default: "number of threads (default: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}