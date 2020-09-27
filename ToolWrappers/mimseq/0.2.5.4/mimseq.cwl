class: CommandLineTool
id: mimseq.cwl
inputs:
- id: in_species
  doc: "Species being analyzed for which to load pre-packaged\ndata files (prioritized\
    \ over -t, -o and -m). Options\nare: Hsap, Mmus, Scer, Spom, Dmel, Ecol"
  type: string
  inputBinding:
    prefix: --species
- id: in_trnas__trnas
  doc: "tRNAs, --trnas genomic tRNAs\nGenomic tRNA fasta file, e.g. from gtRNAdb or\n\
    tRNAscan-SE. Already avalable in data folder for a few\nmodel organisms."
  type: File
  inputBinding:
    prefix: -t
- id: in_file__trnaout
  doc: "out file, --trnaout tRNA out file\ntRNA.out file generated by tRNAscan-SE\
    \ (also may be\navailable on gtRNAdb). Contains information about tRNA\nfeatures,\
    \ including introns."
  type: File
  inputBinding:
    prefix: -o
- id: in__mitotrnas_mitochondrial
  doc: "tRNAs, --mito-trnas mitochondrial tRNAs\nMitochondrial tRNA fasta file. Should\
    \ be downloaded\nfrom mitotRNAdb for species of interest. Already\navaialable\
    \ in data folder for a few model organisms."
  type: File
  inputBinding:
    prefix: -m
- id: in_pre_trnas
  doc: "Input reference sequences are pretRNAs. Enabling this\noption will disable\
    \ the removal of intron sequences\nand addition of 3'-CCA to generate mature tRNA\n\
    sequences. Useful for mapping and discovering pretRNA\nsequence reads."
  type: boolean
  inputBinding:
    prefix: --pretRNAs
- id: in_cluster
  doc: "Enable usearch sequence clustering of tRNAs by\nisodecoder - drastically reduces\
    \ rate of multi-mapping\nreads."
  type: boolean
  inputBinding:
    prefix: --cluster
- id: in_cluster_id
  doc: "[clutering identity threshold]\nIdentity cutoff for usearch clustering between\
    \ 0 and\n1. Default is 0.97."
  type: boolean
  inputBinding:
    prefix: --cluster-id
- id: in_threads
  doc: "number\nSet processor threads to use during read alignment and\nread counting."
  type: long
  inputBinding:
    prefix: --threads
- id: in_post_trans_mod_off
  doc: "Disable post-transcriptional modification of tRNAs,\ni.e. addition of 3'-CCA\
    \ and 5'-G (His) to mature\nsequences. Disable for certain prokaryotes (e.g. E.\n\
    coli) where this is genomically encoded. Leave enabled\n(default) for all eukaryotes."
  type: boolean
  inputBinding:
    prefix: --posttrans-mod-off
- id: in_control_condition
  doc: "condition\nName of control/wild-type condition as per user\ndefined group\
    \ specified in sample data input. This\nmust exactly match the group name specified\
    \ in sample\ndata. This is used for differential expression\nanalysis so that\
    \ results are always in the form\nmutant/treatment vs WT/control. REQUIRED"
  type: string
  inputBinding:
    prefix: --control-condition
- id: in_cca_analysis
  doc: "Enable analysis of 3'-CCA ends: Calculates proportions\nof CC vs CCA ending\
    \ reads per cluster and performs\nDESeq2 analysis. Useful for comparing functional\
    \ to\nnon-funtional mature tRNAs."
  type: boolean
  inputBinding:
    prefix: --cca-analysis
- id: in_max_mismatches
  doc: "mismatches\nMaximum mismatches allowed. If specified between 0.0\nand 1.0,\
    \ then trated as a fraction of read length.\nOtherwise, treated as integer number\
    \ of mismatches.\nDefault is an automatic ultrafast value calculated by\nGSNAP;\
    \ see GSNAP help for more info."
  type: long
  inputBinding:
    prefix: --max-mismatches
- id: in_remap_mismatches
  doc: "mismatches for remap\nMaximum number of mismatches allowed during remapping\n\
    of all reads. Treated similarly to --max-mismatches.\nThis is important to control\
    \ misalignment of reads to\nsimilar clusters/tRNAs Note that the SNP index will\
    \ be\nupdated with new SNPs from the first round of\nalignment and so this should\
    \ be relatively small to\nprohibit misalignment."
  type: long
  inputBinding:
    prefix: --remap-mismatches
- id: in_snp_tolerance
  doc: "Enable GSNAP SNP-tolerant read alignment, where known\nmodifications from\
    \ Modomics are mapped as SNPs."
  type: boolean
  inputBinding:
    prefix: --snp-tolerance
- id: in_name__name
  doc: "name, --name experiment name\nName of experiment. Note, output files and indeces\n\
    will have this as a prefix. REQUIRED"
  type: string
  inputBinding:
    prefix: -n
- id: in_out_dir
  doc: "directory\nOutput directory. Default is current directory. Cannot\nbe an exisiting\
    \ directory."
  type: Directory
  inputBinding:
    prefix: --out-dir
- id: in_keep_temp
  doc: "Keeps multi-mapping and unmapped bam files from GSNAP\nalignments. Default\
    \ is false."
  type: boolean
  inputBinding:
    prefix: --keep-temp
- id: in_min_cov
  doc: "coverage per cluster\nMinimum coverage per cluster to include this cluster\n\
    in coverage plots, modification analysis, and 3'-CCA\nanalysis. Clusters with\
    \ less than this will be\nfiltered out of these analyses. Note that all clusters\n\
    are included for differential expression analysis with\nDESeq2."
  type: long
  inputBinding:
    prefix: --min-cov
- id: in_max_multi
  doc: "coverage multhreading\nMaximum number of bam files to run bedtools coverage\n\
    on simultaneously. Increasing this number reduces\nprocessing time by increasing\
    \ number of files\nprocessed simultaneously. However, depending on the\nsize of\
    \ the bam files to process and available memory,\ntoo many files processed at\
    \ once can cause termination\nof mim-tRNAseq due to insufficient memory. If mim-\n\
    tRNAseq fails during coverage calculation, lower this\nnumber. Increase at your\
    \ own discretion. Default is 3."
  type: long
  inputBinding:
    prefix: --max-multi
- id: in_remap
  doc: "Enable detection of unannotated (potential)\nmodifications from misincorporation\
    \ data. These are\ndefined as having a total misincorporation rate higher\nthan\
    \ the threshold set with --misinc_thresh. These\nmodifications are then appended\
    \ to already known ones,\nand read alignment is reperformed. Very useful for\n\
    poorly annotated species in Modomics. Due to\nrealignment and misincorporation\
    \ parsing, enabling\nthis option slows the analysis down considerably."
  type: boolean
  inputBinding:
    prefix: --remap
- id: in_mis_inc_thresh
  doc: "[threshold for unannotated mods]\nThreshold of total misincorporation rate\
    \ at a position\nin a cluster used to call unannotated modifications.\nValue between\
    \ 0 and 1, default is 0.1 (10%\nmisincorporation).\n"
  type: boolean
  inputBinding:
    prefix: --misinc-thresh
- id: in_sample_data
  doc: "Sample data sheet in text format, tab-separated.\nColumn 1: full path to fastq\
    \ (or fastq.gz). Column 2:\ncondition/group."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file__trnaout
  doc: "out file, --trnaout tRNA out file\ntRNA.out file generated by tRNAscan-SE\
    \ (also may be\navailable on gtRNAdb). Contains information about tRNA\nfeatures,\
    \ including introns."
  type: File
  outputBinding:
    glob: $(inputs.in_file__trnaout)
- id: out_out_dir
  doc: "directory\nOutput directory. Default is current directory. Cannot\nbe an exisiting\
    \ directory."
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- mimseq
