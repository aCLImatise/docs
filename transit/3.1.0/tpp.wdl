version 1.0

task Tpp {
  input {
    String? replicon_ids
    String? bwa
    String? ref
    String? reads_one
    String? reads_two
    String? var_output
    String? optional
    String? args
  }
  command <<<
    tpp \
      ~{optional} \
      ~{args} \
      ~{if defined(replicon_ids) then ("-replicon-ids " +  '"' + replicon_ids + '"') else ""} \
      ~{if defined(bwa) then ("-bwa " +  '"' + bwa + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(reads_one) then ("-reads1 " +  '"' + reads_one + '"') else ""} \
      ~{if defined(reads_two) then ("-reads2 " +  '"' + reads_two + '"') else ""} \
      ~{if defined(var_output) then ("-output " +  '"' + var_output + '"') else ""}
  >>>
  parameter_meta {
    replicon_ids: "# if multiple replicons/genomes/contigs/sequences were provided in -ref, give them names. # Enter 'auto' for autogenerated ids."
    bwa: ""
    ref: ""
    reads_one: ""
    reads_two: ""
    var_output: ""
    optional: ""
    args: ""
  }
}