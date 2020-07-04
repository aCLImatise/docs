version 1.0

task BioformatsFastareorder {
  input {
    Boolean? ignore_missing
    Boolean? v
    String fast_a
    String order_file
    String output_fasta_file
  }
  command <<<
    bioformats fastareorder \
      ~{fast_a} \
      ~{order_file} \
      ~{output_fasta_file} \
      ~{true="--ignore_missing" false="" ignore_missing} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    ignore_missing: "ignore sequences in the specified order file that are missing in the input FASTA file"
    v: ""
    fast_a: "a FASTA file of sequences to reorder"
    order_file: "a file with the sequence order"
    output_fasta_file: "an output FASTA file of reordered sequences"
  }
}