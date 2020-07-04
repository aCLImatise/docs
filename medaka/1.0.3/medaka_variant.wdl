version 1.0

task MedakaVariant {
  input {
    Boolean? debug
    Boolean? quiet
    Array[String] regions
    Boolean? verbose
    String ref_fast_a
    String inputs
    String output_vcf
  }
  command <<<
    medaka variant \
      ~{ref_fast_a} \
      ~{inputs} \
      ~{output_vcf} \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    regions: "Limit variant calling to these reference names (default: None)"
    verbose: "Populate VCF info fields. (default: False)"
    ref_fast_a: "Reference sequence .fasta file."
    inputs: "Consensus .hdf files."
    output_vcf: "Output .vcf."
  }
}