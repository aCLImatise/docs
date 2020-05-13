class: CommandLineTool
id: anvi_get_short_reads_mapping_to_a_gene.cwl
inputs:
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: i
  doc: (S) [INPUT_BAM(S) ...], --input-files INPUT_BAM(S) [INPUT_BAM(S) ...] Sorted
    and indexed BAM files to analyze. It is essential that all BAM files must be the
    result of mappings against the same contigs.
  type: string
  inputBinding:
    prefix: -i
- id: gene_caller_id
  doc: A single gene id.
  type: string
  inputBinding:
    prefix: --gene-caller-id
- id: genes_of_interest
  doc: A file with anvi'o gene caller IDs. There should be only one column in the
    file, and each line should correspond to a unique gene caller id (without a column
    header).
  type: File
  inputBinding:
    prefix: --genes-of-interest
- id: leeway
  doc: The minimum number of nucleotides for a given short read mapping into the gene
    context for it to be reported. You must consider the length of your short reads,
    as well as the length of the gene you are targeting. The default is 100 nts.
  type: string
  inputBinding:
    prefix: --leeway
- id: output_file_prefix
  doc: A prefix to be used while naming the output files (no file type extensions
    please; just a prefix).
  type: File
  inputBinding:
    prefix: --output-file-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-get-short-reads-mapping-to-a-gene
