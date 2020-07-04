version 1.0

task OfstdTests {
  input {
    Boolean? list
    Boolean? exhaustive
    Boolean? verbose
    String tests_to_run
  }
  command <<<
    ofstd_tests \
      ~{tests_to_run} \
      ~{true="--list" false="" list} \
      ~{true="--exhaustive" false="" exhaustive} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    list: "list available tests and exit"
    exhaustive: "also run extensive and slow tests"
    verbose: "verbose mode, print processing details"
    tests_to_run: "names of tests to run (default: all)"
  }
}