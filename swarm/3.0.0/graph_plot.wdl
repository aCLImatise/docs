version 1.0

task GraphPlot.py {
  input {
    File? swarms
    File? internal_structure
    Int? otu
    Int? drop
  }
  command <<<
    graph_plot.py \
      ~{if defined(swarms) then ("--swarms " +  '"' + swarms + '"') else ""} \
      ~{if defined(internal_structure) then ("--internal_structure " +  '"' + internal_structure + '"') else ""} \
      ~{if defined(otu) then ("--OTU " +  '"' + otu + '"') else ""} \
      ~{if defined(drop) then ("--drop " +  '"' + drop + '"') else ""}
  >>>
  parameter_meta {
    swarms: "<FILENAME> contains swarm's results"
    internal_structure: "<FILENAME> contains OTUs' internal structure"
    otu: "Select the nth OTU (first by default)"
    drop: "Drop amplicons seen <INTEGER> or less times (zero by default)"
  }
}