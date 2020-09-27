class: CommandLineTool
id: fargene.cwl
inputs:
- id: in_in_files
  doc: "Input file(s) to be searched. Could either be in FASTA\nor FASTQ format."
  type: string[]
  inputBinding:
    prefix: --infiles
- id: in_hmm_model
  doc: "The Hidden Markov Model that should be used to analyse\nthe data. Could either\
    \ be one of the pre-defined\nmodels or the path to a custom HMM."
  type: File
  inputBinding:
    prefix: --hmm-model
- id: in_score
  doc: "The threshold score for a sequence to be classified as\na (almost) complete\
    \ gene (default: None)."
  type: string
  inputBinding:
    prefix: --score
- id: in_meta
  doc: "If the input data is paired end metagenomic data\n(default: False)."
  type: boolean
  inputBinding:
    prefix: --meta
- id: in_meta_score
  doc: "The threshold score for a fragment to be classified as\na positive. Expressed\
    \ as score per amino acid\n(default: None)."
  type: string
  inputBinding:
    prefix: --meta-score
- id: in_output
  doc: "The output directory for the whole run (default:\n./fargene_output)."
  type: Directory
  inputBinding:
    prefix: --output
- id: in_force
  doc: "Overwrite output directory if it exists (default:\nFalse)."
  type: Directory
  inputBinding:
    prefix: --force
- id: in_tmp_dir
  doc: "Directory for (sometimes large) intermediate files.\n(default: OUT_DIR/tmpdir)"
  type: Directory
  inputBinding:
    prefix: --tmp-dir
- id: in_protein
  doc: "If the input sequence(s) is amino acids (default:\nFalse)."
  type: boolean
  inputBinding:
    prefix: --protein
- id: in_processes
  doc: "Number of processes to be used when processing\nmetagenomic data (default:\
    \ 1)."
  type: long
  inputBinding:
    prefix: --processes
- id: in_min_orf_length
  doc: "The minimal length for a retrieved predicted ORF (nt).\n(default: 90% of the\
    \ length of the chosen hmm.)"
  type: long
  inputBinding:
    prefix: --min-orf-length
- id: in_retrieve_whole
  doc: "Use this flag if the whole sequence where a hit is\ndetected should be retrieved\
    \ (default: False)."
  type: boolean
  inputBinding:
    prefix: --retrieve-whole
- id: in_no_orf_predict
  doc: Do not perform ORF prediction.
  type: boolean
  inputBinding:
    prefix: --no-orf-predict
- id: in_no_quality_filtering
  doc: "Use if no quality control should be performed on the\nmetagenomic data (default:\
    \ False)."
  type: boolean
  inputBinding:
    prefix: --no-quality-filtering
- id: in_no_assembly
  doc: "Use if you want to skip the assembly and retrieval of\ncontigs for metagenomic\
    \ data (default: False)."
  type: boolean
  inputBinding:
    prefix: --no-assembly
- id: in_orf_finder
  doc: "Use NCBI ORFfinder instead of prodigal for ORF\nprediction of genomes/contigs\
    \ (default: False)."
  type: boolean
  inputBinding:
    prefix: --orf-finder
- id: in_store_peptides
  doc: "Store the translated sequences. Useful if you plan to\nredo the analysis using\
    \ a different model and want to\nskip the preprocessing steps (default: False)."
  type: boolean
  inputBinding:
    prefix: --store-peptides
- id: in_rerun
  doc: "Use of you want to redo the analysis or do the\nanalysis using a different\
    \ model and have kept either\nthe nucletide or amino acid sequences. Please note\n\
    that this only works if the input data is the same for\nboth runs (default: False)."
  type: boolean
  inputBinding:
    prefix: --rerun
- id: in_amino_dir
  doc: "Where the amino acid sequences generated by the method\nare located. Only\
    \ to be used in combination with\n--rerun"
  type: string
  inputBinding:
    prefix: --amino-dir
- id: in_fast_a_dir
  doc: "Where the nucleotide sequences in FASTA generated by\nprevious runs of the\
    \ method are located. Only to be\nused in combination with --rerun"
  type: string
  inputBinding:
    prefix: --fasta-dir
- id: in_translation_format
  doc: "The translation format that transeq should use.\n(default: pearson)"
  type: string
  inputBinding:
    prefix: --translation-format
- id: in_loglevel
  doc: 'Set logging level (default: INFO).'
  type: string
  inputBinding:
    prefix: --loglevel
- id: in_log_file
  doc: 'Logfile (default: fargene_analysis.log).'
  type: File
  inputBinding:
    prefix: --logfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The output directory for the whole run (default:\n./fargene_output)."
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
- id: out_force
  doc: "Overwrite output directory if it exists (default:\nFalse)."
  type: Directory
  outputBinding:
    glob: $(inputs.in_force)
cwlVersion: v1.1
baseCommand:
- fargene
