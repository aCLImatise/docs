version 1.0

task RnaQUASTpy {
  input {
    Array[String] reference
    Array[String] gtf
    File? gene_db
    Array[String] alignment
    File? reads_alignment
    File? left_reads
    File? right_reads
    File? single_reads
    Directory? gmap_index
    Directory? output_dir
    Directory? test
    Boolean? debug
    Int? threads
    Array[String] labels
    Boolean? strand_specific
    Int? min_alignment
    Boolean? no_plots
    Boolean? blat
    Boolean? gene_mark
    Boolean? run_quality_assessment
    Float? upper_threshold
    Boolean? prokaryote
    Boolean? disable_infer_genes
    Boolean? disable_infer_transcripts
    File? busco
    String used
    String assemblies
  }
  command <<<
    rnaQUAST_py \
      ~{used} \
      ~{assemblies} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(gene_db) then ("--gene_db " +  '"' + gene_db + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(reads_alignment) then ("--reads_alignment " +  '"' + reads_alignment + '"') else ""} \
      ~{if defined(left_reads) then ("--left_reads " +  '"' + left_reads + '"') else ""} \
      ~{if defined(right_reads) then ("--right_reads " +  '"' + right_reads + '"') else ""} \
      ~{if defined(single_reads) then ("--single_reads " +  '"' + single_reads + '"') else ""} \
      ~{if defined(gmap_index) then ("--gmap_index " +  '"' + gmap_index + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if (strand_specific) then "--strand_specific" else ""} \
      ~{if defined(min_alignment) then ("--min_alignment " +  '"' + min_alignment + '"') else ""} \
      ~{if (no_plots) then "--no_plots" else ""} \
      ~{if (blat) then "--blat" else ""} \
      ~{if (gene_mark) then "--gene_mark" else ""} \
      ~{if (run_quality_assessment) then "--meta" else ""} \
      ~{if defined(upper_threshold) then ("--upper_threshold " +  '"' + upper_threshold + '"') else ""} \
      ~{if (prokaryote) then "--prokaryote" else ""} \
      ~{if (disable_infer_genes) then "--disable_infer_genes" else ""} \
      ~{if (disable_infer_transcripts) then "--disable_infer_transcripts" else ""} \
      ~{if defined(busco) then ("--busco " +  '"' + busco + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rnaquast:2.2.0--0"
  }
  parameter_meta {
    reference: "Single file (or several files for meta RNA) with\\nreference genome in FASTA format or *.txt file with\\none-per-line list of FASTA files with reference\\nsequences"
    gtf: "File with gene coordinates (or several files or *.txt\\nfile with one-per-line list of GTF / GFF files for\\nmeta RNA). We recommend to use files downloaded from\\nGENCODE or Ensembl [GTF/GFF]"
    gene_db: "Path to the gene database generated by gffutils to be"
    alignment: "File(s) with transcript alignments to the reference\\ngenome [PSL]"
    reads_alignment: "File with read alignments to the reference genome\\n[SAM]"
    left_reads: "File with forward paired-end reads [FASTQ or gzip-\\ncompressed]"
    right_reads: "File with reverse paired-end reads [FASTQ or gzip-\\ncompressed]"
    single_reads: "File with unpaired reads [FASTQ or gzip-compressed]"
    gmap_index: "Folder containing GMAP index for the reference genome"
    output_dir: "Directory to store all results [default:\\nrnaQUAST_results/results_<datetime>]"
    test: "Run rnaQUAST on the test data from the test_data\\nfolder, output directory is rnaOUAST_test_output"
    debug: "Report detailed information, typically used only for\\ndetecting problems."
    threads: "Maximum number of threads, default: min(number of CPUs\\n/ 2, 16)"
    labels: "Name(s) of assemblies that will be used in the reports"
    strand_specific: "Set if transcripts were assembled using strand-\\nspecific RNA-Seq data"
    min_alignment: "Minimal alignment length, default: 50"
    no_plots: "Do not draw plots (to speed up computation)"
    blat: "Run with BLAT alignment tool\\n(http://hgwdev.cse.ucsc.edu/~kent/exe/) instead of\\nGMAP"
    gene_mark: "Run with GeneMarkS-T tool\\n(http://topaz.gatech.edu/GeneMark/)"
    run_quality_assessment: "Run QUALITY ASSESSMENT FOR METATRANSCRIPTOME"
    upper_threshold: "Upper threshold for x-assembled/covered/matched\\nmetrics, default: 0.95"
    prokaryote: "Use this option if the genome is prokaryotic"
    disable_infer_genes: "Use this option if your GTF file already contains\\ngenes records"
    disable_infer_transcripts: "Use this option if your GTF already contains\\ntranscripts records"
    busco: "Run with BUSCO tool (http://busco.ezlab.org/).\\nAutomated lineage selection [auto-lineage], BUSCO\\ndataset name or a path to the lineage data to be used"
    used: "-c TRANSCRIPTS [TRANSCRIPTS ...], --transcripts TRANSCRIPTS [TRANSCRIPTS ...]"
    assemblies: "--lower_threshold LOWER_THRESHOLD"
  }
  output {
    File out_stdout = stdout()
    Directory out_test = "${in_test}"
  }
}