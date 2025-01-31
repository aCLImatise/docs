class: CommandLineTool
id: measure_signal.cwl
inputs:
- id: in_exclude_flags
  doc: "A SAM flag used to exclude alignments from the BAM\nfile. More than one may\
    \ be specified. Alignments\nmatching any exclude flag will not be counted. The\n\
    default is to exclude all unmapped reads/mates by\nfiltering out any alignments\
    \ with SAM flags 4 or 8\nset."
  type: File?
  inputBinding:
    prefix: --exclude-flags
- id: in_include_flags
  doc: "A SAM flag that determines which alignments from the\nBAM file will be included\
    \ in the counts. More than one\nmay be specified. Any alignment matching any include\n\
    flag will be counted. The default is to include\nproperly paired and mapped reads\
    \ by filtering for SAM\nflags 83, 99, 147, or 163."
  type: File?
  inputBinding:
    prefix: --include-flags
- id: in_cut_point_offset
  doc: "The position of cut points relative to the beginning\nof a read and in the\
    \ direction toward the read end, as\na number of bases (default: 4)."
  type: long?
  inputBinding:
    prefix: --cut-point-offset
- id: in_parallel
  doc: "The number of parallel scoring processes to use\n(default: 1)."
  type: long?
  inputBinding:
    prefix: --parallel
- id: in_quality
  doc: "The minimum mapping quality required for a read to be\ncounted (default: 30)."
  type: long?
  inputBinding:
    prefix: --quality
- id: in_region_extension
  doc: "The number of bases to score on either side of the\nfeatures (default: 100)."
  type: long?
  inputBinding:
    prefix: --region-extension
- id: in_sample
  doc: "Only measure a random sample of this many features\nfrom the input file."
  type: File?
  inputBinding:
    prefix: --sample
- id: in_verbose
  doc: Requests more detailed output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_bam_file_of_aligned_reads
  doc: The indexed BAM file containing the aligned ATAC-seq
  type: File
  inputBinding:
    position: 0
- id: in_reads_dot
  doc: BED-file-of-features  The BED file containing the features. Use "-" to read
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_exclude_flags
  doc: "A SAM flag used to exclude alignments from the BAM\nfile. More than one may\
    \ be specified. Alignments\nmatching any exclude flag will not be counted. The\n\
    default is to exclude all unmapped reads/mates by\nfiltering out any alignments\
    \ with SAM flags 4 or 8\nset."
  type: File?
  outputBinding:
    glob: $(inputs.in_exclude_flags)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/atactk:0.1.9--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- measure_signal
