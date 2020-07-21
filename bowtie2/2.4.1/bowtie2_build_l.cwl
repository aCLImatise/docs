class: CommandLineTool
id: ../../../bowtie2_build_l.cwl
inputs:
- id: reference_files_fasta
  doc: reference files are Fasta (default)
  type: boolean
  inputBinding:
    prefix: -f
- id: reference_sequences_given
  doc: reference sequences given on cmd line (as <reference_in>)
  type: boolean
  inputBinding:
    prefix: -c
- id: a_slash_no_auto
  doc: disable automatic -p/--bmax/--dcv memory-fitting
  type: boolean
  inputBinding:
    prefix: -a/--noauto
- id: p_slash_packed
  doc: use packed strings internally; slower, less memory
  type: boolean
  inputBinding:
    prefix: -p/--packed
- id: bmax
  doc: max bucket sz for blockwise suffix-array builder
  type: long
  inputBinding:
    prefix: --bmax
- id: bmax_divn
  doc: 'max bucket sz as divisor of ref len (default: 4)'
  type: long
  inputBinding:
    prefix: --bmaxdivn
- id: dcv
  doc: 'diff-cover period for blockwise (default: 1024)'
  type: long
  inputBinding:
    prefix: --dcv
- id: no_dc
  doc: disable diff-cover (algorithm becomes quadratic)
  type: boolean
  inputBinding:
    prefix: --nodc
- id: r_slash_no_ref
  doc: don't build .3/.4 index files
  type: boolean
  inputBinding:
    prefix: -r/--noref
- id: three_slash_just_ref
  doc: just build .3/.4 index files
  type: boolean
  inputBinding:
    prefix: -3/--justref
- id: oslash_off_rate
  doc: 'SA is sampled every 2^<int> BWT chars (default: 5)'
  type: long
  inputBinding:
    prefix: -o/--offrate
- id: t_slash_f_tab_chars
  doc: '# of chars consumed in initial lookup (default: 10)'
  type: long
  inputBinding:
    prefix: -t/--ftabchars
- id: threads
  doc: '# of threads'
  type: long
  inputBinding:
    prefix: --threads
- id: seed
  doc: seed for random number generator
  type: long
  inputBinding:
    prefix: --seed
- id: q_slash_quiet
  doc: verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -q/--quiet
- id: h_slash_help
  doc: print detailed description of tool and its options
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: reference_in
  doc: comma-separated list of files with ref sequences
  type: string
  inputBinding:
    position: 0
- id: bt_two_index_base
  doc: write bt2l data to files with this dir/basename
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bowtie2-build-l
