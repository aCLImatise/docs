version 1.0

task AMUSED {
  input {
    String? _query_sequences
    String? compare_seqs_background
    String? bp
    String? _output_file
    Int? max_nmer_consider
    String? minimum_absolute_subzscore
    String? number_cpu_use
    Boolean? one_p
    Boolean? ng
    Boolean? nu
    Boolean? ds
    Boolean? ns
    Boolean? do
    Boolean? bc
    Boolean? n_sz
  }
  command <<<
    AMUSED \
      ~{if defined(_query_sequences) then ("-q " +  '"' + _query_sequences + '"') else ""} \
      ~{if defined(compare_seqs_background) then ("-b " +  '"' + compare_seqs_background + '"') else ""} \
      ~{if defined(bp) then ("-bp " +  '"' + bp + '"') else ""} \
      ~{if defined(_output_file) then ("-o " +  '"' + _output_file + '"') else ""} \
      ~{if defined(max_nmer_consider) then ("-s " +  '"' + max_nmer_consider + '"') else ""} \
      ~{if defined(minimum_absolute_subzscore) then ("-z " +  '"' + minimum_absolute_subzscore + '"') else ""} \
      ~{if defined(number_cpu_use) then ("-t " +  '"' + number_cpu_use + '"') else ""} \
      ~{true="-1p" false="" one_p} \
      ~{true="-ng" false="" ng} \
      ~{true="-nu" false="" nu} \
      ~{true="-ds" false="" ds} \
      ~{true="-ns" false="" ns} \
      ~{true="-do" false="" do} \
      ~{true="-bc" false="" bc} \
      ~{true="-nsz" false="" n_sz}
  >>>
  parameter_meta {
    _query_sequences: "= query sequences"
    compare_seqs_background: "= compare seqs to these background seqs"
    bp: "= pseudocount to add to background [default=0.5]"
    _output_file: "= output file"
    max_nmer_consider: "= max n-mer to consider [default=8]"
    minimum_absolute_subzscore: "= minimum absolute Sub-Z-score [default = 0; print all]"
    number_cpu_use: "= number of CPU threads to use [default=1]"
    one_p: "= sequences not in fasta format: each line is a full sequence"
    ng: "= no inserting gaps"
    nu: "= no changing to upper case before scan (non ATGC bases are discarded)"
    ds: "= double stranded (reverse complement sequences too)"
    ns: "= don't sort"
    do: "= descriptive output: lots of intermediate values also output (but many columns)"
    bc: "= add lines to output for base content"
    n_sz: "= don't calculate super Zs"
  }
}