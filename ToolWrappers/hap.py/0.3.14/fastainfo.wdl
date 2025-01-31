version 1.0

task Fastainfo {
  input {
    File? input_file
    File? output_file
  }
  command <<<
    fastainfo \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hap.py:0.3.14--py27h5c5a3ab_0"
  }
  parameter_meta {
    input_file: "The input files"
    output_file: "The output file name."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}