version 1.0

task Mashtree {
  input {
    Boolean? seed
    Boolean? save_sketches
  }
  command <<<
    mashtree \
      ~{true="--seed" false="" seed} \
      ~{true="--save-sketches" false="" save_sketches}
  >>>
  parameter_meta {
    seed: "42   Seed for mash sketch"
    save_sketches: "''   If a directory is supplied, then sketches will be saved in it. If no directory is supplied, then sketches will be saved alongside source files."
  }
}