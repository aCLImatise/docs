class: CommandLineTool
id: anvi_run_ncbi_cogs.cwl
inputs:
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string
  inputBinding:
    prefix: --contigs-db
- id: in_cog_data_dir
  doc: "The directory path for your COG setup. Anvi'o will try\nto use the default\
    \ path if you do not specify\nanything."
  type: File
  inputBinding:
    prefix: --cog-data-dir
- id: in_num_threads
  doc: "Maximum number of threads to use for multithreading\nwhenever possible. Very\
    \ conservatively, the default is\n1. It is a good idea to not exceed the number\
    \ of CPUs\n/ cores on your system. Plus, please be careful with\nthis option if\
    \ you are running your commands on a SGE\n--if you are clusterizing your runs,\
    \ and asking for\nmultiple threads to use, you may deplete your\nresources very\
    \ fast."
  type: long
  inputBinding:
    prefix: --num-threads
- id: in_sensitive
  doc: "DIAMOND sensitivity. With this flag you can instruct\nDIAMOND to be 'sensitive',\
    \ rather than 'fast' during\nthe search. It is likely the search will take\nremarkably\
    \ longer. But, hey, if you are doing it for\nyour final analysis, maybe it should\
    \ take longer and\nbe more accurate. This flag is only relevant if you\nare running\
    \ DIAMOND."
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: in_temporary_dir_path
  doc: "If you don't provide anything here, this program will\ncome up with a temporary\
    \ directory path by itself to\nstore intermediate files, and clean it later. If\
    \ you\nwant to have full control over this, you can use this\nflag to define one.."
  type: File
  inputBinding:
    prefix: --temporary-dir-path
- id: in_search_with
  doc: "What program to use for database searching. The\ndefault search uses blastp.\
    \ All available options\ninclude: blastp.\n"
  type: string
  inputBinding:
    prefix: --search-with
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anvi-run-ncbi-cogs
