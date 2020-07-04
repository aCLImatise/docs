version 1.0

task Wdl2dot {
  input {
    String? input_file
    String? output_file
  }
  command <<<
    wdl2dot \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Input wdl file"
    output_file: "Output dot file"
  }
}