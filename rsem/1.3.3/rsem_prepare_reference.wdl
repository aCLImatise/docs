version 1.0

task RsemPrepareReference {
  input {
    File? gtf
    File? gff_three
    String? gff_three_rna_patterns
    Boolean? gff_three_genes_as_transcripts
    String? trusted_sources
    File? transcript_to_gene_map
    File? allele_to_gene_map
    Boolean? polya
    Int? polya_length
    File? no_polya_subset
    Boolean? bowtie
    File? bowtie_path
    Boolean? bowtie_two
    File? bowtie_two_path
    Boolean? star
    File? star_path
    Int? star_sj_db_overhang
    Boolean? his_at_two_hca
    File? his_at_two_path
    Int? p_slash_num_threads
    Boolean? q_slash_quiet
    Boolean? h_slash_help
    Boolean? prep_pr_sem
    String? mapp_ability_bigwig_file
  }
  command <<<
    rsem-prepare-reference \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(gff_three) then ("--gff3 " +  '"' + gff_three + '"') else ""} \
      ~{if defined(gff_three_rna_patterns) then ("--gff3-RNA-patterns " +  '"' + gff_three_rna_patterns + '"') else ""} \
      ~{true="--gff3-genes-as-transcripts" false="" gff_three_genes_as_transcripts} \
      ~{if defined(trusted_sources) then ("--trusted-sources " +  '"' + trusted_sources + '"') else ""} \
      ~{if defined(transcript_to_gene_map) then ("--transcript-to-gene-map " +  '"' + transcript_to_gene_map + '"') else ""} \
      ~{if defined(allele_to_gene_map) then ("--allele-to-gene-map " +  '"' + allele_to_gene_map + '"') else ""} \
      ~{true="--polyA" false="" polya} \
      ~{if defined(polya_length) then ("--polyA-length " +  '"' + polya_length + '"') else ""} \
      ~{if defined(no_polya_subset) then ("--no-polyA-subset " +  '"' + no_polya_subset + '"') else ""} \
      ~{true="--bowtie" false="" bowtie} \
      ~{if defined(bowtie_path) then ("--bowtie-path " +  '"' + bowtie_path + '"') else ""} \
      ~{true="--bowtie2" false="" bowtie_two} \
      ~{if defined(bowtie_two_path) then ("--bowtie2-path " +  '"' + bowtie_two_path + '"') else ""} \
      ~{true="--star" false="" star} \
      ~{if defined(star_path) then ("--star-path " +  '"' + star_path + '"') else ""} \
      ~{if defined(star_sj_db_overhang) then ("--star-sjdboverhang " +  '"' + star_sj_db_overhang + '"') else ""} \
      ~{true="--hisat2-hca" false="" his_at_two_hca} \
      ~{if defined(his_at_two_path) then ("--hisat2-path " +  '"' + his_at_two_path + '"') else ""} \
      ~{if defined(p_slash_num_threads) then ("-p/--num-threads " +  '"' + p_slash_num_threads + '"') else ""} \
      ~{true="-q/--quiet" false="" q_slash_quiet} \
      ~{true="-h/--help" false="" h_slash_help} \
      ~{true="--prep-pRSEM" false="" prep_pr_sem} \
      ~{if defined(mapp_ability_bigwig_file) then ("--mappability-bigwig-file " +  '"' + mapp_ability_bigwig_file + '"') else ""}
  >>>
  parameter_meta {
    gtf: "If this option is on, RSEM assumes that 'reference_fasta_file(s)' contains the sequence of a genome, and will extract transcript reference sequences using the gene annotations specified in <file>, which should be in GTF format. If this and '--gff3' options are off, RSEM will assume 'reference_fasta_file(s)' contains the reference transcripts. In this case, RSEM assumes that name of each sequence in the Multi-FASTA files is its transcript_id. (Default: off)"
    gff_three: "The annotation file is in GFF3 format instead of GTF format. RSEM will first convert it to GTF format with the file name 'reference_name.gtf'. Please make sure that 'reference_name.gtf' does not exist. (Default: off)"
    gff_three_rna_patterns: "<pattern> is a comma-separated list of transcript categories, e.g. \"mRNA,rRNA\". Only transcripts that match the <pattern> will be extracted. (Default: \"mRNA\")"
    gff_three_genes_as_transcripts: "This option is designed for untypical organisms, such as viruses, whose GFF3 files only contain genes. RSEM will assume each gene as a unique transcript when it converts the GFF3 file into GTF format."
    trusted_sources: "<sources> is a comma-separated list of trusted sources, e.g. \"ENSEMBL,HAVANA\". Only transcripts coming from these sources will be extracted. If this option is off, all sources are accepted. (Default: off)"
    transcript_to_gene_map: "Use information from <file> to map from transcript (isoform) ids to gene ids. Each line of <file> should be of the form: gene_id transcript_id with the two fields separated by a tab character. If you are using a GTF file for the \"UCSC Genes\" gene set from the UCSC Genome Browser, then the \"knownIsoforms.txt\" file (obtained from the \"Downloads\" section of the UCSC Genome Browser site) is of this format. If this option is off, then the mapping of isoforms to genes depends on whether the '--gtf' option is specified. If '--gtf' is specified, then RSEM uses the \"gene_id\" and \"transcript_id\" attributes in the GTF file. Otherwise, RSEM assumes that each sequence in the reference sequence files is a separate gene. (Default: off)"
    allele_to_gene_map: "Use information from <file> to provide gene_id and transcript_id information for each allele-specific transcript. Each line of <file> should be of the form: gene_id transcript_id allele_id with the fields separated by a tab character. This option is designed for quantifying allele-specific expression. It is only valid if '--gtf' option is not specified. allele_id should be the sequence names presented in the Multi-FASTA-formatted files. (Default: off)"
    polya: "Add poly(A) tails to the end of all reference isoforms. The length of poly(A) tail added is specified by '--polyA-length' option. STAR aligner users may not want to use this option. (Default: do not add poly(A) tail to any of the isoforms)"
    polya_length: "The length of the poly(A) tails to be added. (Default: 125)"
    no_polya_subset: "Only meaningful if '--polyA' is specified. Do not add poly(A) tails to those transcripts listed in <file>. <file> is a file containing a list of transcript_ids. (Default: off)"
    bowtie: "Build Bowtie indices. (Default: off)"
    bowtie_path: "The path to the Bowtie executables. (Default: the path to Bowtie executables is assumed to be in the user's PATH environment variable)"
    bowtie_two: "Build Bowtie 2 indices. (Default: off)"
    bowtie_two_path: "The path to the Bowtie 2 executables. (Default: the path to Bowtie 2 executables is assumed to be in the user's PATH environment variable)"
    star: "Build STAR indices. (Default: off)"
    star_path: "The path to STAR's executable. (Default: the path to STAR executable is assumed to be in user's PATH environment variable)"
    star_sj_db_overhang: "Length of the genomic sequence around annotated junction. It is only used for STAR to build splice junctions database and not needed for Bowtie or Bowtie2. It will be passed as the --sjdbOverhang option to STAR. According to STAR's manual, its ideal value is max(ReadLength)-1, e.g. for 2x101 paired-end reads, the ideal value is 101-1=100. In most cases, the default value of 100 will work as well as the ideal value. (Default: 100)"
    his_at_two_hca: "Build HISAT2 indices on the transcriptome according to Human Cell Atlas (HCA) SMART-Seq2 pipeline. (Default: off)"
    his_at_two_path: "The path to the HISAT2 executables. (Default: the path to HISAT2 executables is assumed to be in the user's PATH environment variable)"
    p_slash_num_threads: "Number of threads to use for building STAR's genome indices. (Default: 1)"
    q_slash_quiet: "Suppress the output of logging information. (Default: off)"
    h_slash_help: "Show help information."
    prep_pr_sem: "A Boolean indicating whether to prepare reference files for pRSEM, including building Bowtie indices for a genome and selecting training set isoforms. The index files will be used for aligning ChIP-seq reads in prior-enhanced RSEM and the training set isoforms will be used for learning prior. A path to Bowtie executables and a mappability file in bigWig format are required when this option is on. Currently, Bowtie2 is not supported for prior-enhanced RSEM. (Default: off)"
    mapp_ability_bigwig_file: "Full path to a whole-genome mappability file in bigWig format. This file is required for running prior-enhanced RSEM. It is used for selecting a training set of isoforms for prior-learning. This file can be either downloaded from UCSC Genome Browser or generated by GEM (Derrien et al., 2012, PLoS One). (Default: \"\")"
  }
}