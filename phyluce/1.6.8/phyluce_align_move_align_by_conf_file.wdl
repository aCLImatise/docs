version 1.0

task PhyluceAlignMoveAlignByConfFile {
  input {
    String? conf
    String? alignments
    String? output_directory_alignments
    Array[String] sections
    Boolean? opposite
    String? extension
  }
  command <<<
    phyluce_align_move_align_by_conf_file \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(output_directory_alignments) then ("--output " +  '"' + output_directory_alignments + '"') else ""} \
      ~{if defined(sections) then ("--sections " +  '"' + sections + '"') else ""} \
      ~{true="--opposite" false="" opposite} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""}
  >>>
  parameter_meta {
    conf: "The configuration file giving locus names"
    alignments: "The input directory for the alignments"
    output_directory_alignments: "The output directory for the alignments"
    sections: "The sections of files to use as a filter (defaults to all)"
    opposite: "Move alignments based on what is NOT in the conf file"
    extension: "The extension of the files to move"
  }
}