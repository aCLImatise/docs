version 1.0

task SmofFilter {
  input {
    String? shorter_than
    String? longer_than
    String? composition
    String input_fasta_sequence
  }
  command <<<
    smof filter \
      ~{input_fasta_sequence} \
      ~{if defined(shorter_than) then ("--shorter-than " +  '"' + shorter_than + '"') else ""} \
      ~{if defined(longer_than) then ("--longer-than " +  '"' + longer_than + '"') else ""} \
      ~{if defined(composition) then ("--composition " +  '"' + composition + '"') else ""}
  >>>
  parameter_meta {
    shorter_than: "keep only if length is less than or equal to LEN"
    longer_than: "keep only if length is greater than or equal to LEN"
    composition: "keep only if composition meets the condition (e.g. 'GC > .5')"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
}