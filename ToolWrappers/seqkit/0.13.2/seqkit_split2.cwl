class: CommandLineTool
id: seqkit_split2.cwl
inputs:
- id: in_by_length
  doc: split sequences into chunks of N bases, supports K/M/G suffix
  type: long?
  inputBinding:
    prefix: --by-length
- id: in_by_part
  doc: split sequences into N parts
  type: long?
  inputBinding:
    prefix: --by-part
- id: in_by_size
  doc: split sequences into multi parts with N sequences
  type: long?
  inputBinding:
    prefix: --by-size
- id: in_force
  doc: overwrite output directory
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_out_dir
  doc: output directory (default value is $infile.split)
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_read_one
  doc: read1 file
  type: long?
  inputBinding:
    prefix: --read1
- id: in_read_two
  doc: read2 file
  type: long?
  inputBinding:
    prefix: --read2
- id: in_alphabet_guess_seq_length
  doc: length of sequence prefix of the first FASTA record based on which seqkit guesses
    the sequence type (0 for whole seq) (default 10000)
  type: long?
  inputBinding:
    prefix: --alphabet-guess-seq-length
- id: in_id_ncbi
  doc: FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud...
  type: boolean?
  inputBinding:
    prefix: --id-ncbi
- id: in_id_regexp
  doc: regular expression for parsing ID (default "^(\\S+)\\s?")
  type: string?
  inputBinding:
    prefix: --id-regexp
- id: in_in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: File?
  inputBinding:
    prefix: --infile-list
- id: in_line_width
  doc: line width when outputing FASTA format (0 for no wrap) (default 60)
  type: long?
  inputBinding:
    prefix: --line-width
- id: in_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  inputBinding:
    prefix: --out-file
- id: in_quiet
  doc: be quiet and do not show extra information
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_seq_type
  doc: sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect
    by the first sequence) (default "auto")
  type: string?
  inputBinding:
    prefix: --seq-type
- id: in_threads
  doc: 'number of CPUs. (default value: 1 for single-CPU PC, 2 for others. can also
    set with environment variable SEQKIT_THREADS) (default 2)'
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: overwrite output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
- id: out_out_dir
  doc: output directory (default value is $infile.split)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints: []
cwlVersion: v1.1
baseCommand:
- seqkit
- split2
