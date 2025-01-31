class: CommandLineTool
id: amptk_illumina2.cwl
inputs:
- id: in_fast_q
  doc: Illumina R1 (PE forward) reads (Required)
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_reverse
  doc: Illumina R2 (PE reverse) reads.
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_out
  doc: 'Output base name. Default: illumina2'
  type: boolean?
  inputBinding:
    prefix: --out
- id: in_mapping_file
  doc: QIIME-like mapping file
  type: boolean?
  inputBinding:
    prefix: --mapping_file
- id: in_fwd_primer
  doc: 'Forward primer sequence. Default: fITS7'
  type: boolean?
  inputBinding:
    prefix: --fwd_primer
- id: in_rev_primer
  doc: 'Reverse primer sequence Default: ITS4'
  type: boolean?
  inputBinding:
    prefix: --rev_primer
- id: in_name_prefix
  doc: 'Prefix for re-naming reads. Default: R_'
  type: boolean?
  inputBinding:
    prefix: --name_prefix
- id: in_trim_len
  doc: 'Length to trim/pad reads. Default: 300'
  type: boolean?
  inputBinding:
    prefix: --trim_len
- id: in_pad
  doc: 'Pad reads with Ns if shorter than --trim_len. Default: off [on,off]'
  type: boolean?
  inputBinding:
    prefix: --pad
- id: in_min_len
  doc: 'Minimum length read to keep. Default: 100'
  type: boolean?
  inputBinding:
    prefix: --min_len
- id: in_barcode_fast_a
  doc: FASTA file containing barcodes.
  type: boolean?
  inputBinding:
    prefix: --barcode_fasta
- id: in_reverse_barcode
  doc: FASTA file containing R2 barcodes.
  type: boolean?
  inputBinding:
    prefix: --reverse_barcode
- id: in_barcode_mismatch
  doc: 'Number of mismatches in barcode to allow. Default: 0'
  type: boolean?
  inputBinding:
    prefix: --barcode_mismatch
- id: in_barcode_not_anchored
  doc: are not anchored to start of read.
  type: string?
  inputBinding:
    prefix: --barcode_not_anchored
- id: in_full_length
  doc: Keep only full length sequences.
  type: boolean?
  inputBinding:
    prefix: --full_length
- id: in_primer_mismatch
  doc: 'Number of mismatches in primers to allow. Default: 2'
  type: boolean?
  inputBinding:
    prefix: --primer_mismatch
- id: in_merge_method
  doc: 'Software to use for PE merging. Default: usearch [usearch,vsearch]'
  type: boolean?
  inputBinding:
    prefix: --merge_method
- id: in_cpus
  doc: 'Number of CPUs to use. Default: all'
  type: boolean?
  inputBinding:
    prefix: --cpus
- id: in_u_search
  doc: 'USEARCH executable. Default: usearch9'
  type: boolean?
  inputBinding:
    prefix: --usearch
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/amptk:1.5.2--py_0
cwlVersion: v1.1
baseCommand:
- amptk
- illumina2
