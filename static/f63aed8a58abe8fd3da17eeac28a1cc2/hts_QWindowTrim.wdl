version 1.0

task HtsQWindowTrim {
  input {
    Boolean vV
    Boolean nN
    Boolean lL
    Boolean aA
    Boolean uU
    Boolean tT
    Boolean iI
    Boolean sS
    Boolean fF
    Boolean uU
    Boolean fF
    Boolean iI
    Boolean tT
    Boolean zZ
    Boolean pP
    Boolean gG
    Boolean oO
    Boolean nN
    Boolean sS
    Boolean mM
    Boolean lL
    Boolean rR
    Boolean wW
    Boolean qQ
    Boolean oO
  }
  command <<<
    hts_QWindowTrim \
      ~{true="-v" false="" vV} \
      ~{true="-N" false="" nN} \
      ~{true="-L" false="" lL} \
      ~{true="-A" false="" aA} \
      ~{true="-U" false="" uU} \
      ~{true="-T" false="" tT} \
      ~{true="-I" false="" iI} \
      ~{true="-S" false="" sS} \
      ~{true="-F" false="" fF} \
      ~{true="-u" false="" uU} \
      ~{true="-f" false="" fF} \
      ~{true="-i" false="" iI} \
      ~{true="-t" false="" tT} \
      ~{true="-z" false="" zZ} \
      ~{true="-p" false="" pP} \
      ~{true="-g" false="" gG} \
      ~{true="-O" false="" oO} \
      ~{true="-n" false="" nN} \
      ~{true="-s" false="" sS} \
      ~{true="-m" false="" mM} \
      ~{true="-l" false="" lL} \
      ~{true="-r" false="" rR} \
      ~{true="-w" false="" wW} \
      ~{true="-q" false="" qQ} \
      ~{true="-o" false="" oO}
  >>>
}