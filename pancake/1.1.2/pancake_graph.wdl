version 1.0

task PancakeGraph {
  input {
    String? pan_file
    Array[String] chrom_s
    Array[String] starts
    Array[String] stops
    Int? max_nodes
    Int? max_edges
    Int? max_entries
    Boolean? all
    Boolean? regions
    File? output_dot_file
  }
  command <<<
    pancake graph \
      ~{if defined(pan_file) then ("--panfile " +  '"' + pan_file + '"') else ""} \
      ~{if defined(chrom_s) then ("--chroms " +  '"' + chrom_s + '"') else ""} \
      ~{if defined(starts) then ("-starts " +  '"' + starts + '"') else ""} \
      ~{if defined(stops) then ("-stops " +  '"' + stops + '"') else ""} \
      ~{if defined(max_nodes) then ("--max_nodes " +  '"' + max_nodes + '"') else ""} \
      ~{if defined(max_edges) then ("--max_edges " +  '"' + max_edges + '"') else ""} \
      ~{if defined(max_entries) then ("--max_entries " +  '"' + max_entries + '"') else ""} \
      ~{true="-all" false="" all} \
      ~{true="-regions" false="" regions} \
      ~{if defined(output_dot_file) then ("--output " +  '"' + output_dot_file + '"') else ""}
  >>>
  parameter_meta {
    pan_file: "Name of PanCake Data Object File (required)"
    chrom_s: "Chromosomes in Output (by default all chromosomes covered in PAN_FILE)"
    starts: "Start positions (in same order as chromosomes), DEFAULT=1 on all chromosomes"
    stops: "Stop positions (in same order as chromosomes), DEFAULT=length of chromosomes"
    max_nodes: "Maximal number of nodes in output graph. (DEFAULT=10,000): if exceeded, PanCake will warn and interrupt!"
    max_edges: "Maximal number of edges in output graph. (DEFAULT=10,000): if exceeded, PanCake will warn and interrupt!"
    max_entries: "Shared features are truncated in output if number of contained feature instances > MAX_ENTRIES (DEFAULT: MAX_ENTRIES=50)"
    all: "if set, all chromosomes contained in PAN_FILE appear in output (irrespective to CHROMS), DEFAULT=False"
    regions: "if set, only specified regions are shown in output (DEFAULT=False), ignored if -all is set"
    output_dot_file: "output DOT file (DEFAULT: STDOUT)"
  }
}