version 1.0

task Yamllint {
  input {
    String? config_file
    String? config_data
    String? format
    File file_or_dir
  }
  command <<<
    yamllint \
      ~{file_or_dir} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if defined(config_data) then ("--config-data " +  '"' + config_data + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  parameter_meta {
    config_file: "path to a custom configuration"
    config_data: "custom configuration (as YAML source)"
    format: "format for parsing output"
    file_or_dir: "files to check"
  }
}