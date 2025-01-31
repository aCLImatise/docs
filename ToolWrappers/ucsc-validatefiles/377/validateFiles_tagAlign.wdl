version 1.0

task ValidateFilesTagAlign {
  input {
    String? not_valid_option
  }
  command <<<
    validateFiles tagAlign \
      ~{if defined(not_valid_option) then ("-h " +  '"' + not_valid_option + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    not_valid_option: "not a valid option"
  }
  output {
    File out_stdout = stdout()
  }
}