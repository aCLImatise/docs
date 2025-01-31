version 1.0

task BedSubtractBasewisepy {
  input {
    Int bed_file_one
    Int bed_file_two
  }
  command <<<
    bed_subtract_basewise_py \
      ~{bed_file_one} \
      ~{bed_file_two}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0"
  }
  parameter_meta {
    bed_file_one: ""
    bed_file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}