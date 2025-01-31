version 1.0

task MaskPrimerspyAlign {
  input {
    Array[String] list_fastafastq_files
    Array[String] explicit_output_file
    File? outdir
    File? out_name
    File? log
    Boolean? failed
    Boolean? fast_a
    String? delim
    Int? nproc
    File? fasta_file_containing
    Int? max_error
    Int? maxlen
    Int? gap
    Boolean? rev_pr
    Boolean? skip_rc
    String? mode
    Boolean? barcode
    String? bf
    String? pf
  }
  command <<<
    MaskPrimers_py align \
      ~{if defined(list_fastafastq_files) then ("-s " +  '"' + list_fastafastq_files + '"') else ""} \
      ~{if defined(explicit_output_file) then ("-o " +  '"' + explicit_output_file + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (failed) then "--failed" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(fasta_file_containing) then ("-p " +  '"' + fasta_file_containing + '"') else ""} \
      ~{if defined(max_error) then ("--maxerror " +  '"' + max_error + '"') else ""} \
      ~{if defined(maxlen) then ("--maxlen " +  '"' + maxlen + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if (rev_pr) then "--revpr" else ""} \
      ~{if (skip_rc) then "--skiprc" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (barcode) then "--barcode" else ""} \
      ~{if defined(bf) then ("--bf " +  '"' + bf + '"') else ""} \
      ~{if defined(pf) then ("--pf " +  '"' + pf + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_fastafastq_files: "A list of FASTA/FASTQ files containing sequences to\\nprocess. (default: None)"
    explicit_output_file: "Explicit output file name(s). Note, this argument\\ncannot be used with the --failed, --outdir, or\\n--outname arguments. If unspecified, then the output\\nfilename will be based on the input filename(s).\\n(default: None)"
    outdir: "Specify to changes the output directory to the\\nlocation specified. The input file directory is used\\nif this is not specified. (default: None)"
    out_name: "Changes the prefix of the successfully processed\\noutput file to the string specified. May not be\\nspecified with multiple input files. (default: None)"
    log: "Specify to write verbose logging to a file. May not be\\nspecified with multiple input files. (default: None)"
    failed: "If specified create files containing records that fail\\nprocessing. (default: False)"
    fast_a: "Specify to force output as FASTA rather than FASTQ.\\n(default: None)"
    delim: "DELIMITER DELIMITER\\nA list of the three delimiters that separate\\nannotation blocks, field names and values, and values\\nwithin a field, respectively. (default: ('|', '=',\\n','))"
    nproc: "The number of simultaneous computational processes to\\nexecute (CPU cores to utilized). (default: 8)"
    fasta_file_containing: "A FASTA file containing primer sequences. (default:\\nNone)"
    max_error: "Maximum allowable error rate. (default: 0.2)"
    maxlen: "Length of the sequence window to scan for primers.\\n(default: 50)"
    gap: "GAP_PENALTY\\nA list of two positive values defining the gap open\\nand gap extension penalties for aligning the primers.\\nNote: the error rate is calculated as the percentage\\nof mismatches from the primer sequence with gap\\npenalties reducing the match count accordingly; this\\nmay lead to error rates that differ from strict\\nmismatch percentage when gaps are present in the\\nalignment. (default: (1, 1))"
    rev_pr: "Specify to match the tail-end of the sequence against\\nthe reverse complement of the primers. This also\\nreverses the behavior of the --maxlen argument, such\\nthat the search window begins at the tail-end of the\\nsequence. (default: False)"
    skip_rc: "Specify to prevent checking of sample reverse\\ncomplement sequences. (default: False)"
    mode: "Specifies the action to take with the primer sequence.\\nThe \\\"cut\\\" mode will remove both the primer region and\\nthe preceding sequence. The \\\"mask\\\" mode will replace\\nthe primer region with Ns and remove the preceding\\nsequence. The \\\"trim\\\" mode will remove the region\\npreceding the primer, but leave the primer region\\nintact. The \\\"tag\\\" mode will leave the input sequence\\nunmodified. (default: mask)"
    barcode: "Specify to annotate reads sequences with barcode\\nsequences (unique molecular identifiers) found\\npreceding the primer. (default: False)"
    bf: "Name of the barcode annotation field. (default:\\nBARCODE)"
    pf: "Name of the annotation field containing the primer\\nname. (default: PRIMER)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}