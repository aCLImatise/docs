version 1.0

task GtftkGetExample {
  input {
    Boolean? dataset
    Boolean? format
    File? output_file
    Boolean? list
    Boolean? all_dataset
    Boolean? quiet
    Boolean? verbosity
    File? no_date
    Boolean? add_chr
    Boolean? tmp_dir
    Boolean? keep_all
    Boolean? logger_file
    Boolean? write_message_to_file
    Int arguments
  }
  command <<<
    gtftk get_example \
      ~{arguments} \
      ~{if (dataset) then "--dataset" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (all_dataset) then "--all-dataset" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (no_date) then "--no-date" else ""} \
      ~{if (add_chr) then "--add-chr" else ""} \
      ~{if (tmp_dir) then "--tmp-dir" else ""} \
      ~{if (keep_all) then "--keep-all" else ""} \
      ~{if (logger_file) then "--logger-file" else ""} \
      ~{if (write_message_to_file) then "--write-message-to-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pygtftk:1.2.7--py36h4edd4cd_1"
  }
  parameter_meta {
    dataset: "Select a dataset. (default: simple)"
    format: "The dataset format. (default: gtf)"
    output_file: "Output file. (default: <stdout>)"
    list: "Only list files of a dataset. (default: False)"
    all_dataset: "Get the list of all datasets. (default: False)"
    quiet: "Don't write any message when copying files. (default: False)"
    verbosity: "Set output verbosity ([0-3]). (default: 0)"
    no_date: "Do not add date to output file names. (default: False)"
    add_chr: "Add 'chr' to chromosome names before printing output. (default: False)"
    tmp_dir: "Keep all temporary files into this folder. (default: None)"
    keep_all: "Try to keep all temporary files even if process does not terminate normally. (default: False)"
    logger_file: "Stores the arguments passed to the command into a file. (default: None)"
    write_message_to_file: "Store all message into a file. (default: None)"
    arguments: "Arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_no_date = "${in_no_date}"
  }
}