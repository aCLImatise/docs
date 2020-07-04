version 1.0

task AccessionToTaxIdBin {
  input {
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    AccessionToTaxId-bin \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
}