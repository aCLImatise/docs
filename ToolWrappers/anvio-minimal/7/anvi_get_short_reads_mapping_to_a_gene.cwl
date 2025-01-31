class: CommandLineTool
id: anvi_get_short_reads_mapping_to_a_gene.cwl
inputs:
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs-database' (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --contigs-db
- id: in_s_sorted_files
  doc: "(S) [INPUT_BAM(S) ...], --input-files INPUT_BAM(S) [INPUT_BAM(S) ...]\nSorted\
    \ and indexed BAM files to analyze. It is\nessential that all BAM files must be\
    \ the result of\nmappings against the same contigs. (default: None)"
  type: string?
  inputBinding:
    prefix: -i
- id: in_gene_caller_id
  doc: 'A single gene id. (default: None)'
  type: string?
  inputBinding:
    prefix: --gene-caller-id
- id: in_genes_of_interest
  doc: "A file with anvi'o gene caller IDs. There should be\nonly one column in the\
    \ file, and each line should\ncorrespond to a unique gene caller id (without a\n\
    column header). (default: None)"
  type: File?
  inputBinding:
    prefix: --genes-of-interest
- id: in_leeway
  doc: "The minimum number of nucleotides for a given short\nread mapping into the\
    \ gene context for it to be\nreported. You must consider the length of your short\n\
    reads, as well as the length of the gene you are\ntargeting. The default is 100\
    \ nts."
  type: long?
  inputBinding:
    prefix: --leeway
- id: in_output_file_prefix
  doc: "A prefix to be used while naming the output files (no\nfile type extensions\
    \ please; just a prefix). (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --output-file-prefix
- id: in_short_reads_fast_a
  doc: '🍺 More on `anvi-get-short-reads-mapping-to-a-gene`:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: "A prefix to be used while naming the output files (no\nfile type extensions\
    \ please; just a prefix). (default:\nNone)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-get-short-reads-mapping-to-a-gene
