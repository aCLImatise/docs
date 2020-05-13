version 1.0

task GenomedataLoadAssembly {
  input {
    Boolean assemblyAssembly
    Boolean sizesSizes
    Boolean fileFileMode
    Boolean directoryDirectoryMode
    Boolean verboseVerbose
    String? gdGdArchive
    String? seqSeqFiles
  }
  command <<<
    genomedata-load-assembly \
      ~{gdGdArchive} \
      ~{true="--assembly" false="" assemblyAssembly} \
      ~{true="--sizes" false="" sizesSizes} \
      ~{true="--file-mode" false="" fileFileMode} \
      ~{true="--directory-mode" false="" directoryDirectoryMode} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{seqSeqFiles}
  >>>
}