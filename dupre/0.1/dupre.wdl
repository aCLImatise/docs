version 1.0

task Dupre {
  input {
    Array[String] observed
    String? target
    Array[String] truth
    String? subsample
    Boolean? verbose
    Boolean? complexity
    Int? k_zero
    String? allowed_standard_deviation_expected
    String? allowed_standard_deviation_sum
    String? name
    Boolean? histogram
    Boolean? strip_names
  }
  command <<<
    dupre \
      ~{if defined(observed) then ("--observed " +  '"' + observed + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(truth) then ("--truth " +  '"' + truth + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--complexity" false="" complexity} \
      ~{if defined(k_zero) then ("--K0 " +  '"' + k_zero + '"') else ""} \
      ~{if defined(allowed_standard_deviation_expected) then ("--zwidth " +  '"' + allowed_standard_deviation_expected + '"') else ""} \
      ~{if defined(allowed_standard_deviation_sum) then ("--Zwidth " +  '"' + allowed_standard_deviation_sum + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{true="--histogram" false="" histogram} \
      ~{true="--stripnames" false="" strip_names}
  >>>
  parameter_meta {
    observed: "observed occupancy vector (space-separated ints, or a filename)"
    target: "target size, relative (ends with x) or absolute (integer), e.g. '5x' or '1000000')"
    truth: "true occupancy vector of the full dataset (space- separated ints, or a filename)"
    subsample: "subsample size, relative (ends with x) or absolute (integer), e.g. '0.01x' or '10000'"
    verbose: "verbose output"
    complexity: "output complexity instead of duplication rate"
    k_zero: "occupancy number above which to use the heuristic [25]"
    allowed_standard_deviation_expected: "allowed standard deviation for each expected occupancy"
    allowed_standard_deviation_sum: "allowed standard deviation of sum of most significant terms"
    name: "name of this problem instance"
    histogram: "instance data is given as PRESEQ histogram file(s)"
    strip_names: "strip instance names of observed occupancy vector of last component for lookup"
  }
}