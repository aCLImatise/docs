version 1.0

task Gerpelem {
  input {
    Boolean? verbose_mode
    File? column_scores_filename
    String? c
    String? s
    String? suffix_naming_files
    String? suffix_naming_file
    Int? minimum_element_length
    Int? maximum_element_length
    String? inverse_rounding_tolerance
    String? depth_threshold_shallow
    String? penalty_coefficient_shallow
    String? number_border_nucleotides
    String? total_number_allowed
    String? acceptable_false_positive
    String? denominator_minimum_candidate
    String? exponent_minimum_candidate
  }
  command <<<
    gerpelem \
      ~{true="-v" false="" verbose_mode} \
      ~{if defined(column_scores_filename) then ("-f " +  '"' + column_scores_filename + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(suffix_naming_files) then ("-x " +  '"' + suffix_naming_files + '"') else ""} \
      ~{if defined(suffix_naming_file) then ("-w " +  '"' + suffix_naming_file + '"') else ""} \
      ~{if defined(minimum_element_length) then ("-l " +  '"' + minimum_element_length + '"') else ""} \
      ~{if defined(maximum_element_length) then ("-L " +  '"' + maximum_element_length + '"') else ""} \
      ~{if defined(inverse_rounding_tolerance) then ("-t " +  '"' + inverse_rounding_tolerance + '"') else ""} \
      ~{if defined(depth_threshold_shallow) then ("-d " +  '"' + depth_threshold_shallow + '"') else ""} \
      ~{if defined(penalty_coefficient_shallow) then ("-p " +  '"' + penalty_coefficient_shallow + '"') else ""} \
      ~{if defined(number_border_nucleotides) then ("-b " +  '"' + number_border_nucleotides + '"') else ""} \
      ~{if defined(total_number_allowed) then ("-a " +  '"' + total_number_allowed + '"') else ""} \
      ~{if defined(acceptable_false_positive) then ("-e " +  '"' + acceptable_false_positive + '"') else ""} \
      ~{if defined(denominator_minimum_candidate) then ("-q " +  '"' + denominator_minimum_candidate + '"') else ""} \
      ~{if defined(exponent_minimum_candidate) then ("-r " +  '"' + exponent_minimum_candidate + '"') else ""}
  >>>
  parameter_meta {
    verbose_mode: "verbose mode"
    column_scores_filename: "column scores filename"
    c: "[default = none]"
    s: "[default = 0]"
    suffix_naming_files: "suffix for naming output files [default = \".elems\"]"
    suffix_naming_file: "suffix for naming exclusion region file [default = no output]"
    minimum_element_length: "minimum element length [default = 4]"
    maximum_element_length: "maximum element length [default = 2000]"
    inverse_rounding_tolerance: "inverse of the rounding tolerance [default = 10]"
    depth_threshold_shallow: "depth threshold for shallow columns, in substitutions per site [default = 0.5]"
    penalty_coefficient_shallow: "penalty coefficient for shallow columns, as fraction of the median neutral rate [default = 0.5]"
    number_border_nucleotides: "number of border nucleotides for shallow regions [default = 2]"
    total_number_allowed: "total number of allowed non-border shallow nucleotides per element [default = 10]"
    acceptable_false_positive: "acceptable false positive rate [default = 0.05]"
    denominator_minimum_candidate: "denominator for minimum candidate element score formula [default = 10.0]"
    exponent_minimum_candidate: "exponent for minimum candidate element score formula [default = 1.15]"
  }
}