version 1.0

task ConvertQr {
  input {
    String? it
    String? ir
    String? name_write_sequences
    String? prefix
    Int? mf
    Int? length_sequences_exactly
    Boolean? translate_sequences_protein
  }
  command <<<
    convert_qr \
      ~{if defined(it) then ("--it " +  '"' + it + '"') else ""} \
      ~{if defined(ir) then ("--ir " +  '"' + ir + '"') else ""} \
      ~{if defined(name_write_sequences) then ("-o " +  '"' + name_write_sequences + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(mf) then ("--mf " +  '"' + mf + '"') else ""} \
      ~{if defined(length_sequences_exactly) then ("-L " +  '"' + length_sequences_exactly + '"') else ""} \
      ~{true="-p" false="" translate_sequences_protein}
  >>>
  parameter_meta {
    it: "Input file from QuasiRecomb, usually 'quasispecies.fasta' for transmitter"
    ir: "Input file from QuasiRecomb, usually 'quasispecies.fasta' for recipient"
    name_write_sequences: "Name of output file to write sequences to"
    prefix: "Prefix to use in FASTA header (retains source prefixes if none provided)"
    mf: "Minimum frequency required for keeping sequence"
    length_sequences_exactly: "Length of sequences have to be EXACTLY L"
    translate_sequences_protein: "Translate sequences into protein sequences"
  }
}