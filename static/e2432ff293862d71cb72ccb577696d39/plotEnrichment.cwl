class: CommandLineTool
id: plotEnrichment.cwl
inputs:
- id: bam_files
  doc: file2.bam [file1.bam file2.bam ...], -b file1.bam file2.bam [file1.bam file2.bam
    ...] List of indexed bam files separated by spaces.
  type: File
  inputBinding:
    prefix: --bamfiles
- id: bed
  doc: FILE2.bed [FILE1.bed FILE2.bed ...] Limits the enrichment analysis to the regions
    specified in these BED/GTF files. Enrichment is calculated as the number of reads
    overlapping each feature type. The feature type is column 3 in a GTF file and
    "peak" for BED files.
  type: File
  inputBinding:
    prefix: --BED
- id: number_of_processors
  doc: 'Number of processors to use. Type "max/2" to use half the maximum number of
    processors or "max" to use all available processors. (Default: 1)'
  type: long
  inputBinding:
    prefix: --numberOfProcessors
- id: verbose
  doc: Set to see processing messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: keep_exons
  doc: For BED12 files, use each exon as a region, rather than columns 2/3
  type: boolean
  inputBinding:
    prefix: --keepExons
- id: extend_reads
  doc: '[INT bp], -e [INT bp] This parameter allows the extension of reads to fragment
    size. If set, each read is extended, without exception. *NOTE*: This feature is
    generally NOT recommended for spliced-read data, such as RNA-seq, as it would
    extend reads over skipped regions. *Single- end*: Requires a user specified value
    for the final fragment length. Reads that already exceed this fragment length
    will not be extended. *Paired-end*: Reads with mates are always extended to match
    the fragment size defined by the two read mates. Unmated reads, mate reads that
    map too far apart (>4x fragment length) or even map to different chromosomes are
    treated like single-end reads. The input of a fragment length value is optional.
    If no value is specified, it is estimated from the data (mean of the fragment
    size of all mate reads).'
  type: boolean
  inputBinding:
    prefix: --extendReads
- id: ignore_duplicates
  doc: If set, reads that have the same orientation and start position will be considered
    only once. If reads are paired, the mate's position also has to coincide to ignore
    a read.
  type: boolean
  inputBinding:
    prefix: --ignoreDuplicates
- id: min_mapping_quality
  doc: If set, only reads that have a mapping quality score of at least this are considered.
  type: long
  inputBinding:
    prefix: --minMappingQuality
- id: center_reads
  doc: By adding this option, reads are centered with respect to the fragment length.
    For paired-end data, the read is centered at the fragment length defined by the
    two ends of the fragment. For single-end data, the given fragment length is used.
    This option is useful to get a sharper signal around enriched regions.
  type: boolean
  inputBinding:
    prefix: --centerReads
- id: sam_flag_include
  doc: 'Include reads based on the SAM flag. For example, to get only reads that are
    the first mate, use a flag of 64. This is useful to count properly paired reads
    only once, as otherwise the second mate will be also considered for the coverage.
    (Default: None)'
  type: long
  inputBinding:
    prefix: --samFlagInclude
- id: sam_flag_exclude
  doc: 'Exclude reads based on the SAM flag. For example, to get only reads that map
    to the forward strand, use --samFlagExclude 16, where 16 is the SAM flag for reads
    that map to the reverse strand. (Default: None)'
  type: long
  inputBinding:
    prefix: --samFlagExclude
- id: min_fragment_length
  doc: 'The minimum fragment length needed for read/pair inclusion. This option is
    primarily useful in ATACseq experiments, for filtering mono- or di-nucleosome
    fragments. (Default: 0)'
  type: long
  inputBinding:
    prefix: --minFragmentLength
- id: max_fragment_length
  doc: 'The maximum fragment length needed for read/pair inclusion. (Default: 0)'
  type: long
  inputBinding:
    prefix: --maxFragmentLength
outputs: []
cwlVersion: v1.1
baseCommand:
- plotEnrichment
