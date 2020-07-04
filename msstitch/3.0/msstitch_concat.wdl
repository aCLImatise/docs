version 1.0

task MsstitchConcat {
  input {
    String? directory_to_output
    String? output_file
    Array[String] multiple_input_files
  }
  command <<<
    msstitch concat \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(multiple_input_files) then ("-i " +  '"' + multiple_input_files + '"') else ""}
  >>>
  parameter_meta {
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    multiple_input_files: "Multiple input files of {} format"
  }
}