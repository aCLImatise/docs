version 1.0

task InsertionProfile.py {
  input {
    String? input_file
    String? out_prefix
    String? mapq
    String? sequencing
  }
  command <<<
    insertion_profile.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(sequencing) then ("--sequencing " +  '"' + sequencing + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    out_prefix: "Prefix of output files(s)."
    mapq: "Minimum mapping quality (phred scaled) for an alignment to be considered as \"uniquely mapped\". default=30"
    sequencing: "Sequencing layout. \"SE\"(single-end) or \"PE\"(pair-end)."
  }
}