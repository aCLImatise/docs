version 1.0

task FunannotateCompare {
  input {
    Boolean? list_funannotate_genome
    Boolean? out
    Boolean? database
    Boolean? cpus
    Boolean? run_dnds
    Boolean? go_fdr
    Boolean? heat_map_stdev
    Boolean? num_or_thos
    Boolean? bootstrap
    Boolean? out_group
    Boolean? protein_ortho
    Boolean? ml_method
    String arguments
  }
  command <<<
    funannotate compare \
      ~{arguments} \
      ~{true="--input" false="" list_funannotate_genome} \
      ~{true="--out" false="" out} \
      ~{true="--database" false="" database} \
      ~{true="--cpus" false="" cpus} \
      ~{true="--run_dnds" false="" run_dnds} \
      ~{true="--go_fdr" false="" go_fdr} \
      ~{true="--heatmap_stdev" false="" heat_map_stdev} \
      ~{true="--num_orthos" false="" num_or_thos} \
      ~{true="--bootstrap" false="" bootstrap} \
      ~{true="--outgroup" false="" out_group} \
      ~{true="--proteinortho" false="" protein_ortho} \
      ~{true="--ml_method" false="" ml_method}
  >>>
  parameter_meta {
    list_funannotate_genome: "List of funannotate genome folders or GBK files"
    out: "Output folder name. Default: funannotate_compare"
    database: "Path to funannotate database. Default: $FUNANNOTATE_DB"
    cpus: "Number of CPUs to use. Default: 2"
    run_dnds: "Calculate dN/dS ratio on all orthologs. [estimate,full]"
    go_fdr: "P-value for FDR GO-enrichment. Default: 0.05"
    heat_map_stdev: "Cut-off for heatmap. Default: 1.0"
    num_or_thos: "Number of Single-copy orthologs to use for ML. Default: 500"
    bootstrap: "Number of boostrap replicates to run with RAxML. Default: 100"
    out_group: "Name of species to use for ML outgroup. Default: no outgroup"
    protein_ortho: "ProteinOrtho5 POFF results."
    ml_method: "Maxmimum Liklihood method: Default: raxml [raxml,iqtree]         "
    arguments: ""
  }
}