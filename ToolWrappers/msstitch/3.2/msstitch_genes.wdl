version 1.0

task MsstitchGenes {
  input {
    File? input_file_format
    Directory? directory_to_output
    File? output_file
    File? decoy_fn
    String? score_col_pattern
    Boolean? log_score
    Int? min_int
    Array[String] denom_cols
    Array[String] denom_patterns
    Boolean? ms_one_quant
    File? psm_table
    String? fast_a_delim
    Int? gene_field
    File? target_fast_a
    File? decoy_fast_a
    String values_dot
  }
  command <<<
    msstitch genes \
      ~{values_dot} \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(decoy_fn) then ("--decoyfn " +  '"' + decoy_fn + '"') else ""} \
      ~{if defined(score_col_pattern) then ("--scorecolpattern " +  '"' + score_col_pattern + '"') else ""} \
      ~{if (log_score) then "--logscore" else ""} \
      ~{if defined(min_int) then ("--minint " +  '"' + min_int + '"') else ""} \
      ~{if defined(denom_cols) then ("--denomcols " +  '"' + denom_cols + '"') else ""} \
      ~{if defined(denom_patterns) then ("--denompatterns " +  '"' + denom_patterns + '"') else ""} \
      ~{if (ms_one_quant) then "--ms1quant" else ""} \
      ~{if defined(psm_table) then ("--psmtable " +  '"' + psm_table + '"') else ""} \
      ~{if defined(fast_a_delim) then ("--fastadelim " +  '"' + fast_a_delim + '"') else ""} \
      ~{if defined(gene_field) then ("--genefield " +  '"' + gene_field + '"') else ""} \
      ~{if defined(target_fast_a) then ("--targetfasta " +  '"' + target_fast_a + '"') else ""} \
      ~{if defined(decoy_fast_a) then ("--decoyfasta " +  '"' + decoy_fast_a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    decoy_fn: "Decoy peptide table input file"
    score_col_pattern: "Regular expression pattern to find column where score\\nto use (e.g. percolator svm-score) is written."
    log_score: "Score, e.g. q-values will be converted to -log10"
    min_int: "Intensity threshold of PSMs when calculating isobaric\\nratios. Values below threshold will be set to NA."
    denom_cols: "Column numbers of denominator channels when creating a\\nsummarized feature table with isobaric ratios from\\nPSMs"
    denom_patterns: "Regex patterns to detect denominator channels in a PSM\\ntable, when creating a table with summarized feature\\nisobaric ratios. If both --denompatterns and\\n--denomcol are given then column numbers are used.\\nUsage e.g. --denompattern _126 _131. Also possible:\\n--denompattern _12[6-7] to detect multiple columns."
    ms_one_quant: "Specifies to add precursor quant data from lookup DB\\nto output table"
    psm_table: "PSM table file containing isobaric quant data to add\\nto table."
    fast_a_delim: "Delimiter in FASTA header, used to parse gene names in\\ncase of non-ENSEMBL/Uniprot"
    gene_field: "Field nr (first=1) in FASTA that contains gene name\\nwhen using --fastadelim to parse the gene names"
    target_fast_a: "FASTA file with target proteins to determine best\\nscoring proteins of target/decoy pairs for picked FDR.\\nIn case using --picktype ensg/genename"
    decoy_fast_a: "FASTA file with decoy proteins to determine best\\nscoring proteins of target/decoy pairs for picked FDR.\\nIn case using --picktype ensg/genename\\n"
    values_dot: "--isobquantcolpattern QUANTCOLPATTERN"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_to_output = "${in_directory_to_output}"
    File out_output_file = "${in_output_file}"
  }
}