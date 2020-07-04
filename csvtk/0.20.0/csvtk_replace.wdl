version 1.0

task CsvtkReplace {
  input {
    String? fields
    Boolean? fuzzy_fields
    Boolean? ignore_case
    Boolean? keep_key
    Int? key_capt_idx
    String? key_miss_repl
    String? kv_file
    Boolean? kv_file_all_left_columns_as_value
    Int? nr_width
    String? pattern
    String? replacement
    Int? chunk_size
    String? comment_char
    String? delimiter
    Boolean? ignore_empty_row
    Boolean? ignore_illegal_row
    String? in_file_list
    Boolean? lazy_quotes
    Boolean? no_header_row
    Int? num_cpus
    String? out_delimiter
    String? out_file
    Boolean? out_tabs
    Boolean? tabs
    String? flags
  }
  command <<<
    csvtk replace \
      ~{flags} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{true="--fuzzy-fields" false="" fuzzy_fields} \
      ~{true="--ignore-case" false="" ignore_case} \
      ~{true="--keep-key" false="" keep_key} \
      ~{if defined(key_capt_idx) then ("--key-capt-idx " +  '"' + key_capt_idx + '"') else ""} \
      ~{if defined(key_miss_repl) then ("--key-miss-repl " +  '"' + key_miss_repl + '"') else ""} \
      ~{if defined(kv_file) then ("--kv-file " +  '"' + kv_file + '"') else ""} \
      ~{true="--kv-file-all-left-columns-as-value" false="" kv_file_all_left_columns_as_value} \
      ~{if defined(nr_width) then ("--nr-width " +  '"' + nr_width + '"') else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if defined(replacement) then ("--replacement " +  '"' + replacement + '"') else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(comment_char) then ("--comment-char " +  '"' + comment_char + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{true="--ignore-empty-row" false="" ignore_empty_row} \
      ~{true="--ignore-illegal-row" false="" ignore_illegal_row} \
      ~{if defined(in_file_list) then ("--infile-list " +  '"' + in_file_list + '"') else ""} \
      ~{true="--lazy-quotes" false="" lazy_quotes} \
      ~{true="--no-header-row" false="" no_header_row} \
      ~{if defined(num_cpus) then ("--num-cpus " +  '"' + num_cpus + '"') else ""} \
      ~{if defined(out_delimiter) then ("--out-delimiter " +  '"' + out_delimiter + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{true="--out-tabs" false="" out_tabs} \
      ~{true="--tabs" false="" tabs}
  >>>
  parameter_meta {
    fields: "select only these fields. e.g -f 1,2 or -f columnA,columnB (default \"1\")"
    fuzzy_fields: "using fuzzy fields, e.g., -F -f \"*name\" or -F -f \"id123*\""
    ignore_case: "ignore case"
    keep_key: "keep the key as value when no value found for the key"
    key_capt_idx: "capture variable index of key (1-based) (default 1)"
    key_miss_repl: "replacement for key with no corresponding value"
    kv_file: "tab-delimited key-value file for replacing key with value when using \"{kv}\" in -r (--replacement)"
    kv_file_all_left_columns_as_value: "treat all columns except 1th one as value for kv-file with more than 2 columns"
    nr_width: "minimum width for {nr} in flag -r/--replacement. e.g., formating \"1\" to \"001\" by --nr-width 3 (default 1)"
    pattern: "search regular expression"
    replacement: "replacement. supporting capture variables.  e.g. $1 represents the text of the first submatch. ATTENTION: for *nix OS, use SINGLE quote NOT double quotes or use the \ escape character. Record number is also supported by \"{nr}\".use ${1} instead of $1 when {kv} given!"
    chunk_size: "chunk size of CSV reader (default 50)"
    comment_char: "lines starting with commment-character will be ignored. if your header row starts with '#', please assign \"-C\" another rare symbol, e.g. '$' (default \"#\")"
    delimiter: "delimiting character of the input CSV file (default \",\")"
    ignore_empty_row: "ignore empty rows"
    ignore_illegal_row: "ignore illegal rows"
    in_file_list: "file of input files list (one file per line), if given, they are appended to files from cli arguments"
    lazy_quotes: "if given, a quote may appear in an unquoted field and a non-doubled quote may appear in a quoted field"
    no_header_row: "specifies that the input CSV file does not have header row"
    num_cpus: "number of CPUs to use (default value depends on your computer) (default 8)"
    out_delimiter: "delimiting character of the output CSV file, e.g., -D $'\t' for tab (default \",\")"
    out_file: "out file (\"-\" for stdout, suffix .gz for gzipped out) (default \"-\")"
    out_tabs: "specifies that the output is delimited with tabs. Overrides \"-D\""
    tabs: "specifies that the input CSV file is delimited with tabs. Overrides \"-d\" and \"-D\""
    flags: ""
  }
}