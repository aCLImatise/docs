version 1.0

task Ncbiaccdownload {
  input {
    String? molecule
    Int? api_key
    String? extended_validation
    String? format
    File? out
    File? prefix
    Boolean? recursive
    Boolean? url
    Boolean? verbose
    String ncbi_accession
  }
  command <<<
    ncbi_acc_download \
      ~{ncbi_accession} \
      ~{if defined(molecule) then ("--molecule " +  '"' + molecule + '"') else ""} \
      ~{if defined(api_key) then ("--api-key " +  '"' + api_key + '"') else ""} \
      ~{if defined(extended_validation) then ("--extended-validation " +  '"' + extended_validation + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (url) then "--url" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ncbi-acc-download:0.2.7--pyh3252c3a_0"
  }
  parameter_meta {
    molecule: "Molecule type to download. Default: nucleotide"
    api_key: "Specify USER NCBI API key. More info at\\nhttps://www.ncbi.nlm.nih.gov/books/NBK25497/"
    extended_validation: "Perform extended validation. Possible options are\\n'none' to skip validation, 'loads' to check if the\\nsequence file loads in Biopython, or 'all' to run all\\nchecks. Default: none"
    format: "File format to download nucleotide sequences in.\\nDefault: genbank"
    out: "Single filename to use for the combined output."
    prefix: "Filename prefix to use for output files instead of\\nusing the NCBI ID."
    recursive: "Recursively get all entries of a WGS entry."
    url: "Instead of downloading the sequences, just print the\\nURLs to stdout."
    verbose: "Print a progress indicator."
    ncbi_accession: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_prefix = "${in_prefix}"
  }
}