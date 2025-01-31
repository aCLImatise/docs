class: CommandLineTool
id: incorporateGFF.py.cwl
inputs:
- id: in_threads_to_run
  doc: Threads to run
  type: string?
  inputBinding:
    prefix: -p
- id: in_fasta_file_reference
  doc: "[FASTA], --fasta [FASTA]\nThe fasta file to reference."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_file_write_file
  doc: "[OUT], --out [OUT]\nThe file to write resulting fasta file to."
  type: File?
  inputBinding:
    prefix: -o
- id: in_vcf
  doc: The VCF file to use.
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_no_homozygous
  doc: Don't include homozygous variants (default to include)
  type: boolean?
  inputBinding:
    prefix: --no-homozygous
- id: in_heterozygous
  doc: Use heterozygous variants
  type: boolean?
  inputBinding:
    prefix: --heterozygous
- id: in_no_snps
  doc: Don't use SNPs (default to true).
  type: boolean?
  inputBinding:
    prefix: --no-snps
- id: in_dels
  doc: Use Deletions.
  type: boolean?
  inputBinding:
    prefix: --dels
- id: in_ins
  doc: Use Insertions.
  type: boolean?
  inputBinding:
    prefix: --ins
- id: in_individual
  doc: The Individual to use.
  type: string?
  inputBinding:
    prefix: --individual
- id: in_append_chromosome
  doc: Should 'chr' be appended to the chromosome column?.
  type: boolean?
  inputBinding:
    prefix: --append-chromosome
- id: in_gff
  doc: The GFF file to use.
  type: File?
  inputBinding:
    prefix: --gff
- id: in_group_on
  doc: "The key to group entries together by (such as\ntranscript_id)"
  type: string?
  inputBinding:
    prefix: --group-on
- id: in_feature
  doc: "The feature to use for fetching coordinates (such as\nCDS, does not apply\
    \ with cufflinks flag)."
  type: string?
  inputBinding:
    prefix: --feature
- id: in_cufflinks
  doc: If the gff file is in the standard cufflinks output
  type: File?
  inputBinding:
    prefix: --cufflinks
- id: in_variants_only
  doc: Only output transcripts with variants.
  type: boolean?
  inputBinding:
    prefix: --variants-only
- id: in_splice_partial
  doc: "Partially splice variants (only include exonic\nportions of variant)\n"
  type: boolean?
  inputBinding:
    prefix: --splice-partial
- id: in_fast_a
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_out
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_write_file
  doc: "[OUT], --out [OUT]\nThe file to write resulting fasta file to."
  type: File?
  outputBinding:
    glob: $(inputs.in_file_write_file)
- id: out_cufflinks
  doc: If the gff file is in the standard cufflinks output
  type: File?
  outputBinding:
    glob: $(inputs.in_cufflinks)
hints: []
cwlVersion: v1.1
baseCommand:
- incorporateGFF.py
