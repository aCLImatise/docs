version 1.0

task Pepwindowall {
  input {
    Boolean? data_file
    Boolean? window
    Boolean? normalize
  }
  command <<<
    pepwindowall \
      ~{if (data_file) then "-datafile" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (normalize) then "-normalize" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data_file: "datafile   [Enakai.dat] AAINDEX entry data file"
    window: "integer    [19] Window size (Integer 1 or more)"
    normalize: "boolean    [N] Normalize data values"
  }
  output {
    File out_stdout = stdout()
  }
}