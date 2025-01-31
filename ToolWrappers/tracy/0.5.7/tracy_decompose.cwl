class: CommandLineTool
id: tracy_decompose.cwl
inputs:
- id: in_arg_gzipped_fasta
  doc: '[ --genome ] arg                 (gzipped) fasta or wildtype ab1 file'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_peak_ratio
  doc: '[ --pratio ] arg (=0.330000013)  peak ratio to call base'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_kmer_size
  doc: '[ --kmer ] arg (=15)             kmer size'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_arg_min_kmer
  doc: '[ --support ] arg (=3)           min. kmer support'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg_max_indel
  doc: '[ --maxindel ] arg (=1000)       max. indel size in Sanger trace'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_annotate_variants
  doc: "[ --annotate ] arg               annotate variants [homo_sapiens|homo_sapi\n\
    ens_hg19|mus_musculus|danio_rerio|...]"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_call_variants_trace
  doc: '[ --callVariants ]               call variants in trace'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_gap_open
  doc: '[ --gapopen ] arg (=-10)         gap open'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_arg_gap_extension
  doc: '[ --gapext ] arg (=-4)           gap extension'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in__arg_match
  doc: '[ --match ] arg (=3)             match'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in__arg_mismatch
  doc: '[ --mismatch ] arg (=-5)         mismatch'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in__usetrimleft_trimright
  doc: "[ --trim ] arg (=0)              trimming stringency [1:9], 0: use\ntrimLeft\
    \ and trimRight"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_trim_size_left
  doc: '[ --trimLeft ] arg (=50)         trim size left'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_arg_trim_size_right
  doc: '[ --trimRight ] arg (=50)        trim size right'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_arg_alignment_line
  doc: '[ --linelimit ] arg (=60)        alignment line length'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_output_prefix
  doc: '[ --outprefix ] arg (=out)       output prefix'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_trace_do_tab_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tracy
- decompose
