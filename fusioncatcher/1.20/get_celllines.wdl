version 1.0

task GetCelllines.py {
  input {
    String? organism
    String? output_directory_stored
    String? data_one
    String? data_two
    Boolean? skip_filter_overlap
  }
  command <<<
    get_celllines.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_stored) then ("--output " +  '"' + output_directory_stored + '"') else ""} \
      ~{if defined(data_one) then ("--data1 " +  '"' + data_one + '"') else ""} \
      ~{if defined(data_two) then ("--data2 " +  '"' + data_two + '"') else ""} \
      ~{true="--skip-filter-overlap" false="" skip_filter_overlap}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the known fusion genes are downloaded, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_stored: "The output directory where the known fusion genes are stored. Default is '.'."
    data_one: "The input Excel file containg the data from the article. It should be used when there is no internet connection to the site which hosts the article."
    data_two: "The input Excel file containg the data from the article. It should be used when there is no internet connection to the site which hosts the article."
    skip_filter_overlap: "If set then it filters out the known fusion genes where the (i) genes are fully overlapping, or (ii) the genes are partially overlapping and are on the same strand. Default is 'False'."
  }
}