class: CommandLineTool
id: anvi_export_locus.cwl
inputs:
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string?
  inputBinding:
    prefix: --contigs-db
- id: in_search_term
  doc: search term.
  type: string?
  inputBinding:
    prefix: --search-term
- id: in_gene_caller_ids
  doc: "Gene caller ids. Multiple of them can be declared\nseparated by a delimiter\
    \ (the default is a comma). In\nanvi-gen-variability-profile, if you declare nothing\n\
    you will get all genes matching your other filtering\ncriteria. In other programs,\
    \ you may get everything,\nnothing, or an error. It really depends on the\nsituation.\
    \ Fortunately, mistakes are cheap, so it's\nworth a try."
  type: string?
  inputBinding:
    prefix: --gene-caller-ids
- id: in_delimiter
  doc: "The delimiter to parse multiple input terms. The\ndefault is ','."
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_output_dir
  doc: Directory path for output files
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_output_file_prefix
  doc: "A prefix to be used while naming the output files (no\nfile type extensions\
    \ please; just a prefix)."
  type: File?
  inputBinding:
    prefix: --output-file-prefix
- id: in_flank_mode
  doc: "If in --flank-mode, anvi-export-locus will extract a\nlocus based on the coordinates\
    \ of flanking genes. You\nMUST provide 2 flanking genes in the form of TWO\n--search-term,\
    \ --gene-caller-ids, or --hmm-sources.\nThe --flank-mode option is appropriate\
    \ for extracting\nloci of variable gene number lengths, but are\nconsistently\
    \ located between the same flanking genes\nin the genome(s) of interest."
  type: boolean?
  inputBinding:
    prefix: --flank-mode
- id: in_num_genes
  doc: "Required for DEFAULT mode. For each match (to the\nfunction, or HMM that was\
    \ searched) a sequence which\nincludes a block of genes will be saved. The block\n\
    could include either genes only in the forward\ndirection of the gene (defined\
    \ according to the\ndirection of transcription of the gene) or reverse or\nboth.\
    \ If you wish to get both direction use a comma\n(no spaces) to define the block\
    \ For example, '-n 4,5'\nwill give you four genes before and five genes after.\n\
    Whereas, '-n 5' will give you five genes after (in\naddition to the gene that\
    \ matched). To get only genes\npreceding the match use '-n 5,0'. If the number\
    \ of\ngenes requested exceeds the length of the contig, then\nthe output will\
    \ include the sequence until the end of\nthe contig."
  type: long?
  inputBinding:
    prefix: --num-genes
- id: in_use_hmm
  doc: "Use HMM hits instead of functional annotations. In\nother words, --search-term\
    \ will be queried against HMM\nsource annotations, NOT functional annotations.\
    \ If you\nchoose this option, you must also say which HMM source\nto use."
  type: boolean?
  inputBinding:
    prefix: --use-hmm
- id: in_hmm_sources
  doc: "NAME\nGet sequences for a specific list of HMM sources. You\ncan list one\
    \ or more sources by separating them from\neach other with a comma character (i.e.,\
    \ '--hmm-\nsources source_1,source_2,source_3'). If you would\nlike to see a list\
    \ of available sources in the contigs\ndatabase, run this program with '--list-hmm-sources'\n\
    flag."
  type: long?
  inputBinding:
    prefix: --hmm-sources
- id: in_list_hmm_sources
  doc: "List available HMM sources in the contigs database and\nquit."
  type: boolean?
  inputBinding:
    prefix: --list-hmm-sources
- id: in_annotation_sources
  doc: "NAME[S]\nGet functional annotations for a specific list of\nannotation sources.\
    \ You can specify one or more\nsources by separating them from each other with\
    \ a\ncomma character (i.e., '--annotation-sources\nsource_1,source_2,source_3').\
    \ The default behavior is\nto return everything"
  type: long?
  inputBinding:
    prefix: --annotation-sources
- id: in_overwrite_output_destinations
  doc: "Overwrite if the output files and/or directories\nexist."
  type: boolean?
  inputBinding:
    prefix: --overwrite-output-destinations
- id: in_remove_partial_hits
  doc: "By default anvi'o will return hits even if they are\npartial. Declaring this\
    \ flag will make anvi'o filter\nall hits that are partial. Partial hits are hits\
    \ in\nwhich you asked for n1 genes before and n2 genes after\nthe gene that matched\
    \ the search criteria but the\nsearch hits the end of the contig before finding\
    \ the\nnumber of genes that you asked."
  type: boolean?
  inputBinding:
    prefix: --remove-partial-hits
- id: in_never_reverse_complement
  doc: "By default, if a gene that is found by the search\ncriteria is reverse in\
    \ it's direction, then the\nsequence of the entire locus is reversed before it\
    \ is\nsaved to the output. If you wish to prevent this\nbehavior then use the\
    \ flag --never-reverse-complement.\n"
  type: boolean?
  inputBinding:
    prefix: --never-reverse-complement
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory path for output files
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_output_file_prefix
  doc: "A prefix to be used while naming the output files (no\nfile type extensions\
    \ please; just a prefix)."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-export-locus
