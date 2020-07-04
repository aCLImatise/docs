version 1.0

task StreamingQueryDNADatabaseQueue.py {
  input {
    String? threads
    String? containment_threshold
    Boolean? plot_file
    String? filter_file
    String? location_of_thresh
    String in_file
    String reference_file
    String out_file
    String range
  }
  command <<<
    StreamingQueryDNADatabase_queue.py \
      ~{in_file} \
      ~{reference_file} \
      ~{out_file} \
      ~{range} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(containment_threshold) then ("--containment_threshold " +  '"' + containment_threshold + '"') else ""} \
      ~{true="--plot_file" false="" plot_file} \
      ~{if defined(filter_file) then ("--filter_file " +  '"' + filter_file + '"') else ""} \
      ~{if defined(location_of_thresh) then ("--location_of_thresh " +  '"' + location_of_thresh + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of threads to use (default: 8)"
    containment_threshold: "Only return results with containment index above this threshold at the maximum k-mer size. (default: 0.1)"
    plot_file: "Optional flag to specify that a plot of the k-mer curves should also be saved (same basenameas the out_file). (default: False)"
    filter_file: "Location of pre-filter bloom filter. Use only if you absolutely know what you're doing (hard to error check bloom filters). (default: None)"
    location_of_thresh: "Location in range to apply the threshold passed by the -c flag. -l 2 -c 5-50-10 means the threshold will be applied at k-size 25. Default is largest size. (default: -1)"
    in_file: "Input file: FASTA/Q file to be processes"
    reference_file: "Training database/reference file (in HDF5 format). Created with MakeStreamingDNADatabase.py"
    out_file: "Output csv file with the containment indices."
    range: "Range of k-mer sizes in the formate <start>-<end>-<increment>. So 5-10-2 means [5, 7, 9]. If <end> is larger than the k-mer sizeof the training data, this will automatically be reduced."
  }
}