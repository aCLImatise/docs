version 1.0

task Prince {
  input {
    String? boost_output
    String? target_output
    String? templates
    String? target_file
    String? boosting_file
    String? kmer_size_used
    String? copy_number
    String? primers
    String? num_procs
  }
  command <<<
    prince \
      ~{if defined(boost_output) then ("--boost_output " +  '"' + boost_output + '"') else ""} \
      ~{if defined(target_output) then ("--target_output " +  '"' + target_output + '"') else ""} \
      ~{if defined(templates) then ("--templates " +  '"' + templates + '"') else ""} \
      ~{if defined(target_file) then ("--target_file " +  '"' + target_file + '"') else ""} \
      ~{if defined(boosting_file) then ("--boosting_file " +  '"' + boosting_file + '"') else ""} \
      ~{if defined(kmer_size_used) then ("--k " +  '"' + kmer_size_used + '"') else ""} \
      ~{if defined(copy_number) then ("--copynumber " +  '"' + copy_number + '"') else ""} \
      ~{if defined(primers) then ("--primers " +  '"' + primers + '"') else ""} \
      ~{if defined(num_procs) then ("--num_procs " +  '"' + num_procs + '"') else ""}
  >>>
  parameter_meta {
    boost_output: "output file for training data / training data used to predict copy numbers for queries"
    target_output: "output file for query copy number predictions"
    templates: "VNTR templates. Default is for M.TB"
    target_file: "target genome names in a text file"
    boosting_file: "training genome file names in a text file"
    kmer_size_used: "Kmer size used during read recruitment."
    copy_number: "Copy number for training genome."
    primers: "Flanking sequences used in coverage adjustments"
    num_procs: "Number of cores for parallel processing."
  }
}