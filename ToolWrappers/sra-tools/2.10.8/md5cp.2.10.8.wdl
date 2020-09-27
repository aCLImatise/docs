version 1.0

task Md5cp2108 {
  input {
    Boolean? force
    Boolean? preserve
    Boolean? recursive
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String quit_dot
  }
  command <<<
    md5cp_2_10_8 \
      ~{quit_dot} \
      ~{if (force) then "--force" else ""} \
      ~{if (preserve) then "--preserve" else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    force: "overwrite existing columns"
    preserve: "force replacement of existing modes on files\\nand directories"
    recursive: "Recurses over source directories\\n(directories are ignored otherwise)."
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
  }
  output {
    File out_stdout = stdout()
  }
}