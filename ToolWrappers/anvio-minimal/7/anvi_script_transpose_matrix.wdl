version 1.0

task Anviscripttransposematrix {
  input {
    File? output_file
    String matrix_file
  }
  command <<<
    anvi_script_transpose_matrix \
      ~{matrix_file} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    output_file: "File path to store results. (default: None)"
    matrix_file: "Input matrix."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}