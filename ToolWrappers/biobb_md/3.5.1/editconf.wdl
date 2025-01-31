version 1.0

task Editconf {
  input {
    File? config
    File? output_gro_path
    File? input_gro_path
  }
  command <<<
    editconf \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_gro_path) then ("--output_gro_path " +  '"' + output_gro_path + '"') else ""} \
      ~{if defined(input_gro_path) then ("--input_gro_path " +  '"' + input_gro_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_md:3.5.1--py_0"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    output_gro_path: ""
    input_gro_path: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_gro_path = "${in_output_gro_path}"
  }
}