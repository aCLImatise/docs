version 1.0

task Ska {
  input {
    String subcommand
  }
  command <<<
    ska \
      ~{subcommand}
  >>>
  parameter_meta {
    subcommand: ""
  }
}