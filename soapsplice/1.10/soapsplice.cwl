class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/soapsplice.cwl
inputs:
- id: prefix_reference_index
  doc: '* Prefix of reference index files'
  type: string
  inputBinding:
    prefix: -d
- id: _reads_file_fastafastq_format
  doc: '* Reads file 1, FASTA/FASTQ format'
  type: File
  inputBinding:
    prefix: '-1'
- id: reads_file__fastafastq_format
  doc: Reads file 2, FASTA/FASTQ format
  type: File
  inputBinding:
    prefix: '-2'
- id: prefix_output_files
  doc: '* Prefix of output files, (can be with file directory)'
  type: File
  inputBinding:
    prefix: -o
- id: number_threads_default
  doc: Number of threads, <= 20, 1 (default)
  type: long
  inputBinding:
    prefix: -p
- id: forward_reverse_default
  doc: '1: Forward, 2: Reverse, 3: Both (default)'
  type: long
  inputBinding:
    prefix: -S
- id: maximum_mismatch_onesegment
  doc: Maximum mismatch for one-segment alignment, <= 5, 3 (default)
  type: long
  inputBinding:
    prefix: -m
- id: maximum_indel_default
  doc: Maximum indel for one-segment alignment, <= 2, 2 (default)
  type: long
  inputBinding:
    prefix: -g
- id: length_can_ignored
  doc: Length of tail that can be ignored in one-segment alignment, 7 (default)
  type: long
  inputBinding:
    prefix: -i
- id: longest_gap_two
  doc: Longest gap between two segments in two-segment alignment, 500000 (default)
  type: long
  inputBinding:
    prefix: -t
- id: shortest_length_segment
  doc: Shortest length of a segment in two-segment alignment, 8 (default)
  type: long
  inputBinding:
    prefix: -a
- id: output_read_output
  doc: "1: Output read and its quality in one-segment alignment output file (default)\
    \ 0: Don't output such information to save disk space"
  type: long
  inputBinding:
    prefix: -c
- id: format_original_default
  doc: 'Format of output files, 0: original (default), 1: SOAP, 2: SAM'
  type: long
  inputBinding:
    prefix: -f
- id: set_mapq_mapping
  doc: Set the MAPQ (mapping quality) field to this value, just valid in SAM format,
    255 (default)
  type: long
  inputBinding:
    prefix: -s
- id: input_quality_type
  doc: 'Input quality type in FASTQ file 0: quality = Phred + 64, used in Illumina/Solexa
    format, (default) 1: quality = Phred + 33, used in Sanger format'
  type: long
  inputBinding:
    prefix: -q
- id: maximum_distance_pairedend
  doc: The maximum distance between paired-end reads, 500000 (default)
  type: long
  inputBinding:
    prefix: -L
- id: minimum_distance_pairedend
  doc: The minimum distance between paired-end reads, 50 (default)
  type: long
  inputBinding:
    prefix: -l
- id: insert_length_pairedend
  doc: The insert length of paired-end reads
  type: long
  inputBinding:
    prefix: -I
- id: output_junction_information
  doc: "1: Output junction information (default) 0: Don't output junction information"
  type: long
  inputBinding:
    prefix: -j
outputs: []
cwlVersion: v1.1
baseCommand:
- soapsplice
