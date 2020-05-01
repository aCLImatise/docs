version 1.0

task Fdnapars {
  input {
    Boolean weightsWeights
    Boolean maxMaxTrees
    Boolean transversionTransversion
    Boolean outOutGrNo
    Boolean doDoThreshold
  }
  command <<<
    fdnapars \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-maxtrees" false="" maxMaxTrees} \
      ~{true="-transversion" false="" transversionTransversion} \
      ~{true="-outgrno" false="" outOutGrNo} \
      ~{true="-dothreshold" false="" doDoThreshold}
  >>>
}