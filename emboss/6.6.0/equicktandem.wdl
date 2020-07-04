version 1.0

task Equicktandem {
  input {
    Boolean? max_repeat
    Boolean? threshold
  }
  command <<<
    equicktandem \
      ~{true="-maxrepeat" false="" max_repeat} \
      ~{true="-threshold" false="" threshold}
  >>>
  parameter_meta {
    max_repeat: "integer    [600] Maximum repeat size (Any integer value)"
    threshold: "integer    [20] Threshold score (Any integer value)"
  }
}