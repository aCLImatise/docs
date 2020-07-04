class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/multiBamSummary_BED_file.cwl
inputs:
- id: bam_files
  doc: 'FILE2 [FILE1 FILE2 ...], -b FILE1 FILE2 [FILE1 FILE2 ...] List of indexed
    bam files separated by spaces. (default: None)'
  type: File
  inputBinding:
    prefix: --bamfiles
- id: out_filename
  doc: 'File name to save the coverage matrix. This matrix can be subsequently plotted
    using plotCorrelation or or plotPCA. (default: None)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: bed
  doc: 'FILE2.bed [FILE1.bed FILE2.bed ...] Limits the coverage analysis to the regions
    specified in these files. (default: None)'
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
  doc: 'Set to see processing messages. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: out_raw_counts
  doc: 'Save the counts per region to a tab-delimited file. (default: None)'
  type: File
  inputBinding:
    prefix: --outRawCounts
- id: scaling_factors
  doc: 'Compute scaling factors (in the DESeq2 manner) compatible for use with bamCoverage
    and write them to a file. The file has tab-separated columns "sample" and "scalingFactor".
    (default: None)'
  type: File
  inputBinding:
    prefix: --scalingFactors
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
    size of all mate reads). (default: False)'
  type: boolean
  inputBinding:
    prefix: --extendReads
- id: ignore_duplicates
  doc: "If set, reads that have the same orientation and start position will be considered\
    \ only once. If reads are paired, the mate's position also has to coincide to\
    \ ignore a read. (default: False)"
  type: boolean
  inputBinding:
    prefix: --ignoreDuplicates
- id: min_mapping_quality
  doc: 'If set, only reads that have a mapping quality score of at least this are
    considered. (default: None)'
  type: long
  inputBinding:
    prefix: --minMappingQuality
- id: center_reads
  doc: 'By adding this option, reads are centered with respect to the fragment length.
    For paired-end data, the read is centered at the fragment length defined by the
    two ends of the fragment. For single-end data, the given fragment length is used.
    This option is useful to get a sharper signal around enriched regions. (default:
    False)'
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
- id: meta_gene
  doc: 'When either a BED12 or GTF file are used to provide regions, perform the computation
    on the merged exons, rather than using the genomic interval defined by the 5-prime
    and 3-prime most transcript bound (i.e., columns 2 and 3 of a BED file). If a
    BED3 or BED6 file is used as input, then columns 2 and 3 are used as an exon.
    (Default: False)'
  type: boolean
  inputBinding:
    prefix: --metagene
- id: transcript_id
  doc: 'When a GTF file is used to provide regions, only entries with this value as
    their feature (column 3) will be processed as transcripts. (Default: transcript)'
  type: string
  inputBinding:
    prefix: --transcriptID
- id: exon_id
  doc: 'When a GTF file is used to provide regions, only entries with this value as
    their feature (column 3) will be processed as exons. CDS would be another common
    value for this. (Default: exon)'
  type: string
  inputBinding:
    prefix: --exonID
- id: transcript_id_designator
  doc: "Each region has an ID (e.g., ACTB) assigned to it, which for BED files is\
    \ either column 4 (if it exists) or the interval bounds. For GTF files this is\
    \ instead stored in the last column as a key:value pair (e.g., as 'transcript_id\
    \ \"ACTB\"', for a key of transcript_id and a value of ACTB). In some cases it\
    \ can be convenient to use a different identifier. To do so, set this to the desired\
    \ key. (Default: transcript_id)"
  type: string
  inputBinding:
    prefix: --transcript_id_designator
- id: file_two_dot_bam
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- multiBamSummary
- BED-file
