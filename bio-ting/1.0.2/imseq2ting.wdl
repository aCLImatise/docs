version 1.0

task Imseq2ting {
  input {
    String? im_seq_folder
    String? path_output_directory
  }
  command <<<
    imseq2ting \
      ~{if defined(im_seq_folder) then ("--imseq_folder " +  '"' + im_seq_folder + '"') else ""} \
      ~{if defined(path_output_directory) then ("--output " +  '"' + path_output_directory + '"') else ""}
  >>>
  parameter_meta {
    im_seq_folder: "Path to directory containing imseq repertoires as act- file"
    path_output_directory: "Path to output directory"
  }
}