version 1.0

task ValidateRna {
  input {
    String minMinContig
    String similarSimilar
    String completeCompleteRate
    Boolean isIsLocal
    String? validateValidateContigsBlat
    String? reReFfa
    String? contigsContigsFa
  }
  command <<<
    validate_rna \
      ~{validateValidateContigsBlat} \
      ~{if defined(minMinContig) then ("--min_contig " +  '"' + minMinContig + '"') else ""} \
      ~{if defined(similarSimilar) then ("--similar " +  '"' + similarSimilar + '"') else ""} \
      ~{if defined(completeCompleteRate) then ("--complete_rate " +  '"' + completeCompleteRate + '"') else ""} \
      ~{true="--is_local" false="" isIsLocal} \
      ~{reReFfa} \
      ~{contigsContigsFa}
  >>>
}