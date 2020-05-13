version 1.0

task PysradbSearch {
  input {
    String saveSaveTo
    String dbDb
    Boolean assayAssay
    Boolean descDesc
    Boolean detailedDetailed
    Boolean expandExpand
  }
  command <<<
    pysradb search \
      ~{if defined(saveSaveTo) then ("--saveto " +  '"' + saveSaveTo + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{true="--assay" false="" assayAssay} \
      ~{true="--desc" false="" descDesc} \
      ~{true="--detailed" false="" detailedDetailed} \
      ~{true="--expand" false="" expandExpand}
  >>>
}