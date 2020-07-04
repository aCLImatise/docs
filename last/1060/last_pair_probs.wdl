version 1.0

task LastPairProbs {
  input {
    Boolean? rna
    Boolean? est_dist
    String? mis_map
    String? fra_glen
    String? sdev
    String? disjoint
    String? circular
  }
  command <<<
    last-pair-probs \
      ~{true="--rna" false="" rna} \
      ~{true="--estdist" false="" est_dist} \
      ~{if defined(mis_map) then ("--mismap " +  '"' + mis_map + '"') else ""} \
      ~{if defined(fra_glen) then ("--fraglen " +  '"' + fra_glen + '"') else ""} \
      ~{if defined(sdev) then ("--sdev " +  '"' + sdev + '"') else ""} \
      ~{if defined(disjoint) then ("--disjoint " +  '"' + disjoint + '"') else ""} \
      ~{if defined(circular) then ("--circular " +  '"' + circular + '"') else ""}
  >>>
  parameter_meta {
    rna: "assume the reads are from potentially-spliced RNA"
    est_dist: "just estimate the distribution of distances"
    mis_map: "don't write alignments with mismap probability > M (default: 0.01)"
    fra_glen: "mean distance in bp"
    sdev: "standard deviation of distance"
    disjoint: "prior probability of disjoint mapping (default: 0.02 if -r, else 0.01)"
    circular: "specifies that chromosome CHROM is circular (default: chrM)"
  }
}