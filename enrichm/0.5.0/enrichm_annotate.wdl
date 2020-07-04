version 1.0

task EnrichmAnnotate {
  input {
    String? log
    String? verbosity
    String? output_directory
    Boolean? force
    Array[String] genome_files
    String? genome_directory
    Array[String] protein_files
    String? protein_directory
    Boolean? ko
    Boolean? ko_hmm
    Boolean? pfam
    Boolean? tigr_fam
    Boolean? clusters
    Boolean? orthologs
    Boolean? ca_zy
    Boolean? ec
    Boolean? cut_ga
    Boolean? cut_nc
    Boolean? cut_tc
    Boolean? cut_ko
    String? evalue
    String? bit
    String? id
    String? aln_query
    String? aln_reference
    String? when_clustering_matches
    String? threads
    String? parallel
    String? inflation
    String? suffix
    Boolean? light
    Boolean? count_domains
    String? chunk_number
    String? chunk_max
  }
  command <<<
    enrichm annotate \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(genome_files) then ("--genome_files " +  '"' + genome_files + '"') else ""} \
      ~{if defined(genome_directory) then ("--genome_directory " +  '"' + genome_directory + '"') else ""} \
      ~{if defined(protein_files) then ("--protein_files " +  '"' + protein_files + '"') else ""} \
      ~{if defined(protein_directory) then ("--protein_directory " +  '"' + protein_directory + '"') else ""} \
      ~{true="--ko" false="" ko} \
      ~{true="--ko_hmm" false="" ko_hmm} \
      ~{true="--pfam" false="" pfam} \
      ~{true="--tigrfam" false="" tigr_fam} \
      ~{true="--clusters" false="" clusters} \
      ~{true="--orthologs" false="" orthologs} \
      ~{true="--cazy" false="" ca_zy} \
      ~{true="--ec" false="" ec} \
      ~{true="--cut_ga" false="" cut_ga} \
      ~{true="--cut_nc" false="" cut_nc} \
      ~{true="--cut_tc" false="" cut_tc} \
      ~{true="--cut_ko" false="" cut_ko} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(bit) then ("--bit " +  '"' + bit + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(aln_query) then ("--aln_query " +  '"' + aln_query + '"') else ""} \
      ~{if defined(aln_reference) then ("--aln_reference " +  '"' + aln_reference + '"') else ""} \
      ~{if defined(when_clustering_matches) then ("--c " +  '"' + when_clustering_matches + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{if defined(inflation) then ("--inflation " +  '"' + inflation + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{true="--light" false="" light} \
      ~{true="--count_domains" false="" count_domains} \
      ~{if defined(chunk_number) then ("--chunk_number " +  '"' + chunk_number + '"') else ""} \
      ~{if defined(chunk_max) then ("--chunk_max " +  '"' + chunk_max + '"') else ""}
  >>>
  parameter_meta {
    log: "Output logging information to this file."
    verbosity: "Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent"
    output_directory: "Output directory"
    force: "Overwrite previous run"
    genome_files: "Space separated list of genomes to annotate"
    genome_directory: "Directory containing genomes to annotate"
    protein_files: "Space separated list of .faa files of genomes to annotate. Protein files need to be generated by prodigal."
    protein_directory: "Directory containing .faa files of genomes to annotate. Protein files need to be generated by prodigal."
    ko: "Annotate with KO ids"
    ko_hmm: "Annotate with KO ids"
    pfam: "Annotate with Pfam HMMs"
    tigr_fam: "Annotate with TIGRFAM HMMs"
    clusters: "Annotate with cluster ids"
    orthologs: "Annotate with ortholog ids"
    ca_zy: "Annotate with dbCAN HMMs"
    ec: "Annotate with EC ids"
    cut_ga: "For PFAM and TIGRfam searches: use profiles GA gathering cutoffs to set all thresholding"
    cut_nc: "For PFAM and TIGRfam searches: use profiles NC noise cutoffs to set all thresholding"
    cut_tc: "For PFAM and TIGRfam searches: use profiles TC trusted cutoffs to set all thresholding"
    cut_ko: "For KO HMM annotation searches: use cutoffs defined by KEGG to maximise F-score."
    evalue: "Use this evalue cutoff to filter false positives (default: 1e-05)"
    bit: "Use this bit score cutoff to filter false positives (default: 0)"
    id: "Use this percent identity cutoff to filter false positives (default: 0.3)"
    aln_query: "This fraction of the query must align to the reference (default: 0.7)"
    aln_reference: "This fraction of the reference must align to the query (default: 0.7)"
    when_clustering_matches: "When clustering, use matches above this fraction of aligned (covered) query and target residues (default: 0.7)"
    threads: "Use this number of threads when annotating with BLAST and HMMsearch (default: 1)"
    parallel: "Run this number of jobs in parallel when annotating with HMMsearch (default: 5)"
    inflation: "Inflation factor to use when calling clusters in ortholog (default = 5.0)"
    suffix: "Treat files ending with this suffix within the --genome_directory as genomes (default: .fna for --genome_directory and .faa for )"
    light: "Don't store metadata for genome files (can't use enrichM compare downstream, default=False)"
    count_domains: "Fill the frequency matrix with the total number of times an annotation was detected (for example, when one domain more than once within a protein), rather than the count of proteins with with that annotation"
    chunk_number: "Split loading of genomes into this many chunks (default = 4)"
    chunk_max: "Maximum number of genomes to load per chunk (default = 2500)"
  }
}