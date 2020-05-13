version 1.0

task CoverageStats {
  input {
    String tT
    String iI
    String oO
    String mM
    String selectSelect
  }
  command <<<
    coverage_stats \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(selectSelect) then ("--select " +  '"' + selectSelect + '"') else ""}
  >>>
}