version 1.0

task EstimateErrorpyErrorquality {
  input {
    String estimate_error_do_tpy
  }
  command <<<
    EstimateError_py error_quality \
      ~{estimate_error_do_tpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    estimate_error_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}