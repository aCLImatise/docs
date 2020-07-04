version 1.0

task AlignGFA {
  input {
    String? load_tigs_tgstore
    String? bed_format_source
    String? input_graph
    String? output_graph_graph
    Boolean? gfa
    Boolean? bed
    Boolean? increase_chatter
    String? use_computational_threads
    String? opts
  }
  command <<<
    alignGFA \
      ~{opts} \
      ~{if defined(load_tigs_tgstore) then ("-T " +  '"' + load_tigs_tgstore + '"') else ""} \
      ~{if defined(bed_format_source) then ("-C " +  '"' + bed_format_source + '"') else ""} \
      ~{if defined(input_graph) then ("-i " +  '"' + input_graph + '"') else ""} \
      ~{if defined(output_graph_graph) then ("-o " +  '"' + output_graph_graph + '"') else ""} \
      ~{true="-gfa" false="" gfa} \
      ~{true="-bed" false="" bed} \
      ~{true="-V" false="" increase_chatter} \
      ~{if defined(use_computational_threads) then ("-t " +  '"' + use_computational_threads + '"') else ""}
  >>>
  parameter_meta {
    load_tigs_tgstore: "v         Load tigs from tgStore 't', version 'v'."
    bed_format_source: "v         For BED format, the source of the 'chromosomes'.  Similar to -T. Consensus sequence must exist for -T and -C (usually in v=2)"
    input_graph: "Input graph."
    output_graph_graph: "Output graph. Graph are either GFA (v1) or BED format."
    gfa: "The input and output graphs are in GFA (v1) format."
    bed: "The input graph is in BED format.  If -C is supplied, the output will also be BED, and will have updated positions. If -C is not supplied, the output will be GFA (v1) of the overlaps inferred from the BED positions."
    increase_chatter: "Increase chatter."
    use_computational_threads: "Use 'threads' computational threads."
    opts: ""
  }
}