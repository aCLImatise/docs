class: CommandLineTool
id: wig2bed_typical.cwl
inputs:
- id: in_keep_header
  doc: "(-k)\nPreserve header section as pseudo-BED elements"
  type: boolean?
  inputBinding:
    prefix: --keep-header
- id: in_multi_split
  doc: "(-b <basename>)\nA single input file may have multiple WIG sections. With\
    \ this option\nevery section gets an ID prefix starting with <basename>.1, then\n\
    <basename>.2, and so on"
  type: File?
  inputBinding:
    prefix: --multisplit
- id: in_zero_indexed
  doc: "(-x)\nDo not apply any index adjustment to input WIG data. This is useful\n\
    with input derived from bigWigToWig, for example, where the bigWig\ndata are originally\
    \ zero-indexed."
  type: boolean?
  inputBinding:
    prefix: --zero-indexed
- id: in_do_not_sort
  doc: "(-d)\nDo not sort BED output with sort-bed (not compatible with --output=starch)"
  type: boolean?
  inputBinding:
    prefix: --do-not-sort
- id: in_max_mem
  doc: "(-m <val>)\nSets aside <value> memory for sorting BED output. For example,\
    \ <value> can\nbe 8G, 8000M or 8000000000 to specify 8 GB of memory (default is\
    \ 2G)"
  type: long?
  inputBinding:
    prefix: --max-mem
- id: in_sort_tmpdir
  doc: "(-r <dir>)\nOptionally sets [dir] as temporary directory for sort data, when\
    \ used in\nconjunction with --max-mem=[value], instead of the host's operating\
    \ system\ndefault temporary directory"
  type: long?
  inputBinding:
    prefix: --sort-tmpdir
- id: in_starch_bzip_two
  doc: "(-z)\nUsed with --output=starch, the compressed output explicitly applies\
    \ the bzip2\nalgorithm to compress intermediate data (default is bzip2)"
  type: boolean?
  inputBinding:
    prefix: --starch-bzip2
- id: in_starch_gzip
  doc: "(-g)\nUsed with --output=starch, the compressed output applies gzip compression\
    \ on\nintermediate data"
  type: boolean?
  inputBinding:
    prefix: --starch-gzip
- id: in_starch_note
  doc: "=\"xyz...\" (-e \"xyz...\")\nUsed with --output=starch, this adds a note to\
    \ the Starch archive metadata"
  type: boolean?
  inputBinding:
    prefix: --starch-note
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wig2bed-typical
