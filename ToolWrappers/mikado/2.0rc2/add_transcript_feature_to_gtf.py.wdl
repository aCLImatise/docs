version 1.0

task AddTranscriptFeatureToGtfpy {
  input {
    String script
    String to
    String add
    String a
    String transcript
    String feature
    String e_dot_gdot
    String cufflinks
    String gt_fs
  }
  command <<<
    add_transcript_feature_to_gtf_py \
      ~{script} \
      ~{to} \
      ~{add} \
      ~{a} \
      ~{transcript} \
      ~{feature} \
      ~{e_dot_gdot} \
      ~{cufflinks} \
      ~{gt_fs}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    script: ""
    to: ""
    add: ""
    a: ""
    transcript: ""
    feature: ""
    e_dot_gdot: ""
    cufflinks: ""
    gt_fs: ""
  }
  output {
    File out_stdout = stdout()
  }
}