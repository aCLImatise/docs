version 1.0

task GdtoolsSUBTRACT {
  input {
    String? output_gd_file
    Boolean? phylogeny_aware
    Boolean? frequency_aware
    Boolean? verbose
  }
  command <<<
    gdtools SUBTRACT \
      ~{if defined(output_gd_file) then ("--output " +  '"' + output_gd_file + '"') else ""} \
      ~{true="--phylogeny-aware" false="" phylogeny_aware} \
      ~{true="--frequency-aware" false="" frequency_aware} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    output_gd_file: "output GD file (DEFAULT=output.gd)"
    phylogeny_aware: "Check the optional 'phylogeny_id' field when deciding if entries are equivalent"
    frequency_aware: "Use the frequencies of mutations when performing the subtraction. Normally an input mutation is removed if it appears at any frequency in a subtracted file. In this mode its frequency is reduced by the frequency in each subtracted file. If the resulting frequency is zero or below, then the mutation is removed."
    verbose: "verbose mode"
  }
}