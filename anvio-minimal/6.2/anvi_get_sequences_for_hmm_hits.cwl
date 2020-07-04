class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_get_sequences_for_hmm_hits.cwl
inputs:
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: profile_db
  doc: Anvi'o profile database
  type: string
  inputBinding:
    prefix: --profile-db
- id: collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: bin_id
  doc: Bin name you are interested in.
  type: string
  inputBinding:
    prefix: --bin-id
- id: bin_ids_file
  doc: Text file for bins (each line should be a unique bin id).
  type: File
  inputBinding:
    prefix: --bin-ids-file
- id: external_genomes
  doc: A two-column TAB-delimited flat text file that lists anvi'o contigs databases.
    The first item in the header line should read 'name', and the second should read
    'contigs_db_path'. Each line in the file should describe a single entry, where
    the first column is the name of the genome (or MAG), and the second column is
    the anvi'o contigs database generated for this genome.
  type: File
  inputBinding:
    prefix: --external-genomes
- id: internal_genomes
  doc: "A five-column TAB-delimited flat text file. The header line must contain these\
    \ columns: 'name', 'bin_id', 'collection_id', 'profile_db_path', 'contigs_db_path'.\
    \ Each line should list a single entry, where 'name' can be any name to describe\
    \ the anvi'o bin identified as 'bin_id' that is stored in a collection."
  type: File
  inputBinding:
    prefix: --internal-genomes
- id: hmm_sources
  doc: NAME Get sequences for a specific list of HMM sources. You can list one or
    more sources by separating them from each other with a comma character (i.e.,
    '--hmm- sources source_1,source_2,source_3'). If you would like to see a list
    of available sources in the contigs database, run this program with '--list-hmm-sources'
    flag.
  type: string
  inputBinding:
    prefix: --hmm-sources
- id: gene_names
  doc: HIT NAME Get sequences only for a specific gene name. Each name should be separated
    from each other by a comma character. For instance, if you want to get back only
    RecA and Ribosomal_L27, you can type '--gene-names RecA,Ribosomal_L27', and you
    will get any and every hit that matches these names in any source. If you would
    like to see a list of available gene names, you can use '--list-available-gene-names'
    flag.
  type: string
  inputBinding:
    prefix: --gene-names
- id: list_hmm_sources
  doc: List available HMM sources in the contigs database and quit.
  type: boolean
  inputBinding:
    prefix: --list-hmm-sources
- id: list_available_gene_names
  doc: List available gene names in HMM sources selection and quit.
  type: boolean
  inputBinding:
    prefix: --list-available-gene-names
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: no_wrap
  doc: Do not be wrap sequences nicely in the output file.
  type: boolean
  inputBinding:
    prefix: --no-wrap
- id: get_aa_sequences
  doc: Store amino acid sequences instead.
  type: boolean
  inputBinding:
    prefix: --get-aa-sequences
- id: concatenate_genes
  doc: Concatenate output genes in the same order to create a multi-gene alignment
    output that is suitable for phylogenomic analyses.
  type: boolean
  inputBinding:
    prefix: --concatenate-genes
- id: partition_file
  doc: "Some commonly used software for phylogenetic analyses (e.g., IQ-TREE, RAxML,\
    \ etc) allow users to specify/test different substitution models for each gene\
    \ of a concatenated multiple sequence alignments. For this, they use a special\
    \ file format called a 'partition file', which indicates the site for each gene\
    \ in the alignment. You can use this parameter to declare an output path for anvi'o\
    \ to report a NEXUS format partition file in addition to your FASTA output (requested\
    \ by Massimiliano Molari in #1333)."
  type: File
  inputBinding:
    prefix: --partition-file
- id: max_num_genes_missing_from_bin
  doc: This filter removes bins (or genomes) from your analysis. If you have a list
    of gene names, you can use this parameter to omit any bin (or external genome)
    that is missing more than a number of genes you desire. For instance, if you have
    100 genome bins, and you are interested in working with 5 ribosomal proteins,
    you can use '--max-num-genes-missing-from- bin 4' to remove the bins that are
    missing more than 4 of those 5 genes. This is especially useful for phylogenomic
    analyses. Parameter 0 will remove any bin that is missing any of the genes.
  type: long
  inputBinding:
    prefix: --max-num-genes-missing-from-bin
- id: min_num_bins_gene_occurs
  doc: This filter removes genes from your analysis. Let's assume you have 100 bins
    to get sequences for HMM hits. If you want to work only with genes among all the
    hits that occur in at least X number of bins, and discard the rest of them, you
    can use this flag. If you say '--min-num-bins-gene-occurs 90', each gene in the
    analysis will be required at least to appear in 90 genomes. If a gene occurs in
    less than that number of genomes, it simply will not be reported. This is especially
    useful for phylogenomic analyses, where you may want to only focus on genes that
    are prevalent across the set of genomes you wish to analyze.
  type: long
  inputBinding:
    prefix: --min-num-bins-gene-occurs
- id: align_with
  doc: The multiple sequence alignment program to use when multiple sequence alignment
    is necessary. To see all available options, use the flag `--list-aligners`.
  type: string
  inputBinding:
    prefix: --align-with
- id: separator
  doc: A word that will be used to sepaate concatenated gene sequences from each other
    (IF you are using this program with `--concatenate-genes` flag). The default is
    "XXX" for amino acid sequences, and "NNN" for DNA sequences
  type: string
  inputBinding:
    prefix: --separator
- id: return_best_hit
  doc: A bin may contain more than one hit for a gene name in a given HMM source.
    For instance, there may be multiple RecA hits in a genome bin from Campbell et
    al.. Using this flag, will go through all of the gene names that appear multiple
    times, and remove all but the one with the lowest e-value. Good for whenever you
    really need to get only a single copy of single-copy core genes from a genome
    bin.
  type: boolean
  inputBinding:
    prefix: --return-best-hit
- id: just_do_it
  doc: Don't bother me with questions or warnings, just do it.
  type: boolean
  inputBinding:
    prefix: --just-do-it
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-get-sequences-for-hmm-hits
