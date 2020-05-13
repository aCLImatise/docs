version 1.0

task DcmdataTests {
  input {
    Boolean lL
    Boolean xX
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean logLogLevel
    Boolean logLogConfig
    String? testsTestsToRun
  }
  command <<<
    dcmdata_tests \
      ~{testsTestsToRun} \
      ~{true="-l" false="" lL} \
      ~{true="-x" false="" xX} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--log-config" false="" logLogConfig}
  >>>
}