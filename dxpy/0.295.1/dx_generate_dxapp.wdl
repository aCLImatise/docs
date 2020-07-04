version 1.0

task DxGenerateDxapp {
  input {
    String? target_module
    String? target_function
    String? target_executable
    String? subcommand
    String? output_file
    Array[String] output_params
    String? output_param_regexp
    String? interpreter
    String? instance_type
    String? timeout
    String? distribution
    String? release
    String? run_spec_version
  }
  command <<<
    dx-generate-dxapp \
      ~{if defined(target_module) then ("--target-module " +  '"' + target_module + '"') else ""} \
      ~{if defined(target_function) then ("--target-function " +  '"' + target_function + '"') else ""} \
      ~{if defined(target_executable) then ("--target-executable " +  '"' + target_executable + '"') else ""} \
      ~{if defined(subcommand) then ("--subcommand " +  '"' + subcommand + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_params) then ("--output-params " +  '"' + output_params + '"') else ""} \
      ~{if defined(output_param_regexp) then ("--output-param-regexp " +  '"' + output_param_regexp + '"') else ""} \
      ~{if defined(interpreter) then ("--interpreter " +  '"' + interpreter + '"') else ""} \
      ~{if defined(instance_type) then ("--instance-type " +  '"' + instance_type + '"') else ""} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if defined(distribution) then ("--distribution " +  '"' + distribution + '"') else ""} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{if defined(run_spec_version) then ("--runspec-version " +  '"' + run_spec_version + '"') else ""}
  >>>
  parameter_meta {
    target_module: "The fully-qualified module that contains the target method."
    target_function: "The main function that is called by the target executable. This should bewhere the ArgumentParser is configured."
    target_executable: "The name of the executable. This is used in the dxapp.json runSpec."
    subcommand: "Subcommand to pass to the target method, if required."
    output_file: "The output dxapp.json file. If not specified, output will go to stdout."
    output_params: "Names of output parameters (in case they can't be autodetected)."
    output_param_regexp: "Regular expression that identifies output parameter names."
    interpreter: "Type of script that will wrap the executable."
    instance_type: "AWS instance type to use."
    timeout: "Max runtime of this app (in hours)."
    distribution: "Distribution to use for the machine image."
    release: "Distribution release to use for the machine image."
    run_spec_version: "Version of the application execution environment inside the runSpec block."
  }
}