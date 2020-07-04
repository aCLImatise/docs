version 1.0

task SixgillMakefasta {
  input {
    String? out
    String? type
    String? missed_cleavages
    Int? min_peptide_length
    Boolean? debug
  }
  command <<<
    sixgill_makefasta \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(missed_cleavages) then ("--missedcleavages " +  '"' + missed_cleavages + '"') else ""} \
      ~{if defined(min_peptide_length) then ("--minpeptidelength " +  '"' + min_peptide_length + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    out: "output file"
    type: "database type"
    missed_cleavages: "missed cleavages (for type peptide only)"
    min_peptide_length: "minimum peptide length (for type peptide only)"
    debug: "Enable debug logging"
  }
}