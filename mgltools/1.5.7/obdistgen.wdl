version 1.0

task Obdistgen {
  input {
    File filename
  }
  command <<<
    obdistgen \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
}