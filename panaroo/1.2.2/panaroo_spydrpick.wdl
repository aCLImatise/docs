version 1.0

task PanarooSpydrpick {
  input {
    String? quantile
    String? gene_presence_absence
    String? out_dir
    String? tree
    String? clusters
  }
  command <<<
    panaroo-spydrpick \
      ~{if defined(quantile) then ("--quantile " +  '"' + quantile + '"') else ""} \
      ~{if defined(gene_presence_absence) then ("--input " +  '"' + gene_presence_absence + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""}
  >>>
  parameter_meta {
    quantile: "the quantile used to determine a threshold for keeping MI values (default=0.9)."
    gene_presence_absence: "gene presence absence file (.Rtab) generated by Panaroo"
    out_dir: "location of an output directory"
    tree: "phylogeny in newick format for weigting samples to control for population structure"
    clusters: "sample clusters for weigting to control for population structure. format: 'sample_name,cluster_id'"
  }
}