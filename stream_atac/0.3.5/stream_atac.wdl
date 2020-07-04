version 1.0

task StreamAtac {
  input {
    File? file_count
    File? file_region
    File? file_sample
    String? genome
    String? feature
    String? kmer_length_scatacseq
    Boolean? resize_peak
    String? peak_width
    String? n_jobs
    File? file_format
    String? output_folder
  }
  command <<<
    stream_atac \
      ~{if defined(file_count) then ("--file_count " +  '"' + file_count + '"') else ""} \
      ~{if defined(file_region) then ("--file_region " +  '"' + file_region + '"') else ""} \
      ~{if defined(file_sample) then ("--file_sample " +  '"' + file_sample + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if defined(kmer_length_scatacseq) then ("-k " +  '"' + kmer_length_scatacseq + '"') else ""} \
      ~{true="--resize_peak" false="" resize_peak} \
      ~{if defined(peak_width) then ("--peak_width " +  '"' + peak_width + '"') else ""} \
      ~{if defined(n_jobs) then ("--n_jobs " +  '"' + n_jobs + '"') else ""} \
      ~{if defined(file_format) then ("--file_format " +  '"' + file_format + '"') else ""} \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""}
  >>>
  parameter_meta {
    file_count: "scATAC-seq counts file name (default: None)"
    file_region: "scATAC-seq regions file name in .bed or .bed.gz format (default: None)"
    file_sample: "scATAC-seq samples file name (default: None)"
    genome: "Reference genome. Choose from {{'mm9', 'mm10', 'hg38', 'hg19'}} (default: hg19)"
    feature: "Features used to have the analysis. Choose from {{'kmer', 'motif'}} (default: kmer)"
    kmer_length_scatacseq: "k-mer length for scATAC-seq analysis (default: 7)"
    resize_peak: "Resize peaks when peaks have different widths. (default: False)"
    peak_width: "Specify the width of peak when resizing them. Only valid when resize_peak is True. (default: 450)"
    n_jobs: "The number of parallel jobs to run. (default,1) (default: 1)"
    file_format: "File format of file_count. Currently supported file formats: 'tsv','txt','csv','mtx'. (default: tsv)"
    output_folder: "Output folder (default: None)"
  }
}