version 1.0

task Thermorawfileparser {
  input {
    File? raw_file_input
    File? input_directory
    File? output_directory_specify
    File? output_file
    File? stdout
    Int? format
    Int? metadata
    File? metadata_output_file
    File? gzip
    Boolean? no_peak_picking
    Boolean? no_zlib_compression
    Boolean? all_detectors
    Int? logging
    String? include_exception_data
    Int? ms_level
    Boolean? mgf_precursor
    Boolean? s_three_url
    File? s_three_access_key_id
    File? s_three_secret_accesskey
    Boolean? s_three_bucket_name
    String verbose_dot
  }
  command <<<
    thermorawfileparser \
      ~{verbose_dot} \
      ~{if defined(raw_file_input) then ("--input " +  '"' + raw_file_input + '"') else ""} \
      ~{if defined(input_directory) then ("--input_directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(output_directory_specify) then ("--output " +  '"' + output_directory_specify + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(metadata) then ("--metadata " +  '"' + metadata + '"') else ""} \
      ~{if defined(metadata_output_file) then ("--metadata_output_file " +  '"' + metadata_output_file + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (no_peak_picking) then "--noPeakPicking" else ""} \
      ~{if (no_zlib_compression) then "--noZlibCompression" else ""} \
      ~{if (all_detectors) then "--allDetectors" else ""} \
      ~{if defined(logging) then ("--logging " +  '"' + logging + '"') else ""} \
      ~{if defined(include_exception_data) then ("--includeExceptionData " +  '"' + include_exception_data + '"') else ""} \
      ~{if defined(ms_level) then ("--msLevel " +  '"' + ms_level + '"') else ""} \
      ~{if (mgf_precursor) then "--mgfPrecursor" else ""} \
      ~{if (s_three_url) then "--s3_url" else ""} \
      ~{if (s_three_access_key_id) then "--s3_accesskeyid" else ""} \
      ~{if (s_three_secret_accesskey) then "--s3_secretaccesskey" else ""} \
      ~{if (s_three_bucket_name) then "--s3_bucketName" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.4--ha8f3691_0"
  }
  parameter_meta {
    raw_file_input: "The raw file input (Required). Specify this or an\\ninput directory -d."
    input_directory: "The directory containing the raw files (Required).\\nSpecify this or an input raw file -i."
    output_directory_specify: "The output directory. Specify this or an output\\nfile -b. Specifying neither writes to the input\\ndirectory."
    output_file: "The output file. Specify this or an output\\ndirectory -o. Specifying neither writes to the\\ninput directory."
    stdout: "Write to standard output. Cannot be combined with\\nfile or directory output. Implies silent logging,\\ni.e. logging level 0"
    format: "The spectra output format: 0 for MGF, 1 for mzML,\\n2 for indexed mzML, 3 for Parquet. Defaults to\\nindexed mzML if no format is specified."
    metadata: "The metadata output format: 0 for JSON, 1 for TXT."
    metadata_output_file: "The metadata output file. By default the metadata\\nfile is written to the output directory."
    gzip: "GZip the output file."
    no_peak_picking: "[=VALUE]\\nDon't use the peak picking provided by the native\\nThermo library. By default peak picking is\\nenabled. Optional argument allows disabling peak\\npeaking only for selected MS levels and should\\nbe a comma-separated list of integers (1,2,3)\\nand/or intervals (1-3), open-end intervals (1-)\\nare allowed"
    no_zlib_compression: "Don't use zlib compression for the m/z ratios and\\nintensities. By default zlib compression is\\nenabled."
    all_detectors: "Extract additional detector data: UV/PDA etc"
    logging: "Optional logging level: 0 for silent, 1 for"
    include_exception_data: "reference and exception data"
    ms_level: "Select MS levels (MS1, MS2, etc) included in the\\noutput, should be a comma-separated list of\\nintegers (1,2,3) and/or intervals (1-3), open-\\nend intervals (1-) are allowed"
    mgf_precursor: "Include precursor scan number in MGF file TITLE"
    s_three_url: "[=VALUE]       Optional property to write directly the data into\\nS3 Storage."
    s_three_access_key_id: "[=VALUE]\\nOptional key for the S3 bucket to write the file\\noutput."
    s_three_secret_accesskey: "[=VALUE]\\nOptional key for the S3 bucket to write the file\\noutput."
    s_three_bucket_name: "[=VALUE]\\nS3 bucket name\\n"
    verbose_dot: "-e, --ignoreInstrumentErrors"
  }
  output {
    File out_stdout = stdout()
    File out_stdout = "${in_stdout}"
    File out_metadata_output_file = "${in_metadata_output_file}"
    File out_gzip = "${in_gzip}"
    File out_s_three_access_key_id = "${in_s_three_access_key_id}"
    File out_s_three_secret_accesskey = "${in_s_three_secret_accesskey}"
  }
}