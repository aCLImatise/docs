version 1.0

task MatchesByFeature {
  input {
    String gff_three_file
    String gff_features
    String match_files
  }
  command <<<
    MatchesByFeature \
      ~{gff_three_file} \
      ~{gff_features} \
      ~{match_files}
  >>>
  parameter_meta {
    gff_three_file: ""
    gff_features: ""
    match_files: ""
  }
}