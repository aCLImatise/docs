version 1.0

task _fpars {
  input {
    Boolean weightsWeights
    Boolean methodMethod
    Boolean maxMaxTrees
    Boolean outOutGrNo
    Boolean doDoThreshold
    Boolean stepStepBox
    Boolean anAnCseq
  }
  command <<<
    _fpars \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-method" false="" methodMethod} \
      ~{true="-maxtrees" false="" maxMaxTrees} \
      ~{true="-outgrno" false="" outOutGrNo} \
      ~{true="-dothreshold" false="" doDoThreshold} \
      ~{true="-stepbox" false="" stepStepBox} \
      ~{true="-ancseq" false="" anAnCseq}
  >>>
}