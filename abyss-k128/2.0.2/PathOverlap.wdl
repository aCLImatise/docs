version 1.0

task PathOverlap {
  input {
    String? km_er
    File? graph
    File? repeats
    Boolean? overlap
    Boolean? assemble
    Boolean? trim
    Boolean? output_graph_adj
    Boolean? as_qg
    Boolean? dot
    Boolean? gv
    Boolean? gfa
    Boolean? sam
    Boolean? ss
    Boolean? no_ss
    Boolean? verbose
    File? db
    String? library
    String? strain
    String? species
    String contig_adjacency_graph
    File path
  }
  command <<<
    PathOverlap \
      ~{contig_adjacency_graph} \
      ~{path} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(repeats) then ("--repeats " +  '"' + repeats + '"') else ""} \
      ~{true="--overlap" false="" overlap} \
      ~{true="--assemble" false="" assemble} \
      ~{true="--trim" false="" trim} \
      ~{true="--adj" false="" output_graph_adj} \
      ~{true="--asqg" false="" as_qg} \
      ~{true="--dot" false="" dot} \
      ~{true="--gv" false="" gv} \
      ~{true="--gfa" false="" gfa} \
      ~{true="--sam" false="" sam} \
      ~{true="--SS" false="" ss} \
      ~{true="--no-SS" false="" no_ss} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    km_er: "k-mer size"
    graph: "write the contig adjacency graph to FILE"
    repeats: "write repeat contigs to FILE"
    overlap: "find overlapping paths [default]"
    assemble: "assemble overlapping paths"
    trim: "trim overlapping paths"
    output_graph_adj: "output the graph in ADJ format [default]"
    as_qg: "output the graph in ASQG format"
    dot: "output the graph in GraphViz format"
    gv: "output the graph in GraphViz format"
    gfa: "output the graph in GFA format"
    sam: "output the graph in SAM format"
    ss: "expect contigs to be oriented correctly"
    no_ss: "no assumption about contig orientation [default]"
    verbose: "display verbose output"
    db: "specify path of database repository in FILE"
    library: "specify library NAME for sqlite"
    strain: "specify strain NAME for sqlite"
    species: "specify species NAME for sqlite"
    contig_adjacency_graph: "contig adjacency graph"
    path: "sequences of contig IDs"
  }
}