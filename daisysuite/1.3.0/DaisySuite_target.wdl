version 1.0

task DaisySuiteTarget {
  input {
    Boolean? cores
    Boolean? keep_going
    Boolean? dry_run
    Boolean? print_shell_cmds
    File? config_file
    String daisy_suite
    String? snake_make
  }
  command <<<
    DaisySuite target \
      ~{daisy_suite} \
      ~{snake_make} \
      ~{true="--cores" false="" cores} \
      ~{true="--keep-going" false="" keep_going} \
      ~{true="--dryrun" false="" dry_run} \
      ~{true="--printshellcmds" false="" print_shell_cmds} \
      ~{if defined(config_file) then ("--configfile " +  '"' + config_file + '"') else ""}
  >>>
  parameter_meta {
    cores: "number of cores"
    keep_going: "go on with independent jobs if a job fails"
    dry_run: "do not execute anything"
    print_shell_cmds: "print out the shell commands that will be executed"
    config_file: ""
    daisy_suite: ""
    snake_make: ""
  }
}