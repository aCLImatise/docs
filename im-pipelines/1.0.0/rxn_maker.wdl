version 1.0

task RxnMaker {
  input {
    String? input_file_defined
    String? in_format
    String? base_name_extension
    String? out_format
    Boolean? write_metadata_metrics
    Boolean? quiet
    Boolean? multi
    String? reaction
    String? reagent_lib
    String? reagent_lib_format
  }
  command <<<
    rxn_maker \
      ~{if defined(input_file_defined) then ("--input " +  '"' + input_file_defined + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(base_name_extension) then ("--output " +  '"' + base_name_extension + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--meta" false="" write_metadata_metrics} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--multi" false="" multi} \
      ~{if defined(reaction) then ("--reaction " +  '"' + reaction + '"') else ""} \
      ~{if defined(reagent_lib) then ("--reagent_lib " +  '"' + reagent_lib + '"') else ""} \
      ~{if defined(reagent_lib_format) then ("--reagent_lib_format " +  '"' + reagent_lib_format + '"') else ""}
  >>>
  parameter_meta {
    input_file_defined: "Input file, if not defined the STDIN is used"
    in_format: "Input format. When using STDIN this must be specified."
    base_name_extension: "Base name for output file (no extension). If not defined then SDTOUT is used for the structures and output is used as base name of the other files."
    out_format: "Output format. Defaults to 'sdf'."
    write_metadata_metrics: "Write metadata and metrics files"
    quiet: "Quiet mode"
    multi: "Output one file for each reaction"
    reaction: "Name of reaction to be run"
    reagent_lib: "Reagent file, if not defined the STDIN is used"
    reagent_lib_format: "Reagent file format. When using STDIN this must be specified."
  }
}