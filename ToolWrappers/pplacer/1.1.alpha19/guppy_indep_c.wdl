version 1.0

task GuppyIndepC {
  input {
    Boolean? pp
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? csv
    Boolean? leaf_values
    Boolean? help
    String indep_c
    String place_file
    String? s
  }
  command <<<
    guppy indep_c \
      ~{indep_c} \
      ~{place_file} \
      ~{s} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (leaf_values) then "--leaf-values" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pp: "Use posterior probability for the weight."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    csv: "Output the results as csv instead of a padded matrix."
    leaf_values: "Name of CSV file giving values for the leaves of the tree."
    help: "Display this list of options"
    indep_c: ""
    place_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}