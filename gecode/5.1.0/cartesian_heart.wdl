version 1.0

task CartesianHeart {
  input {
    Boolean? trace
  }
  command <<<
    cartesian-heart \
      ~{true="-trace" false="" trace}
  >>>
  parameter_meta {
    trace: "(init,prune,fix,fail,done,propagate,commit,none,all,variable,general) default: none trace flags (comma-separated list)"
  }
}