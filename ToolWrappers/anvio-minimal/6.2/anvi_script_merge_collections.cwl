class: CommandLineTool
id: anvi_script_merge_collections.cwl
inputs:
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string
  inputBinding:
    prefix: --contigs-db
- id: in_s_input_files
  doc: "(S) [FILE(S) ...], --input-files FILE(S) [FILE(S) ...]\nInput file(s). TAB-delimited\
    \ input files should have\ntwo columns, where the first column holds the contig\n\
    name, and the second one the bin id. This is the\nstandard ouptut of the program\
    \ anvi-export-collection."
  type: File
  inputBinding:
    prefix: -i
- id: in_output_file
  doc: "Output file name.\n"
  type: File
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Output file name.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- anvi-script-merge-collections
