class: CommandLineTool
id: ../../../cmsearch.cwl
inputs:
- id: configure_cm_glocal
  doc: ': configure CM for glocal alignment [default: local]'
  type: boolean
  inputBinding:
    prefix: -g
- id: set_space_size
  doc: ': set search space size in *Mb* to <x> for E-value calculations  (x>0)'
  type: string
  inputBinding:
    prefix: -Z
- id: devhelp
  doc: ': show list of otherwise hidden developer/expert options'
  type: boolean
  inputBinding:
    prefix: --devhelp
- id: direct_output_file
  doc: ': direct output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: save_multiple_alignment
  doc: ': save multiple alignment of all significant hits to file <s>'
  type: string
  inputBinding:
    prefix: -A
- id: tbl_out
  doc: ': save parseable table of hits to file <s>'
  type: string
  inputBinding:
    prefix: --tblout
- id: acc
  doc: ': prefer accessions over names in output'
  type: boolean
  inputBinding:
    prefix: --acc
- id: no_ali
  doc: ": don't output alignments, so output is smaller"
  type: boolean
  inputBinding:
    prefix: --noali
- id: no_text_w
  doc: ': unlimit ASCII text output line width'
  type: boolean
  inputBinding:
    prefix: --notextw
- id: text_w
  doc: ': set max width of ASCII text output lines  [120]  (n>=120)'
  type: string
  inputBinding:
    prefix: --textw
- id: verbose
  doc: ': report extra information; mainly useful for debugging'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: report_sequences_evalue
  doc: ': report sequences <= this E-value threshold in output  [10.0]  (x>0)'
  type: string
  inputBinding:
    prefix: -E
- id: report_sequences_threshold
  doc: ': report sequences >= this score threshold in output'
  type: string
  inputBinding:
    prefix: -T
- id: ince
  doc: ': consider sequences <= this E-value threshold as significant  [0.01]'
  type: string
  inputBinding:
    prefix: --incE
- id: in_ct
  doc: ': consider sequences >= this score threshold as significant'
  type: string
  inputBinding:
    prefix: --incT
- id: cut_ga
  doc: ": use CM's GA gathering cutoffs as reporting thresholds"
  type: boolean
  inputBinding:
    prefix: --cut_ga
- id: cut_nc
  doc: ": use CM's NC noise cutoffs as reporting thresholds"
  type: boolean
  inputBinding:
    prefix: --cut_nc
- id: cut_tc
  doc: ": use CM's TC trusted cutoffs as reporting thresholds"
  type: boolean
  inputBinding:
    prefix: --cut_tc
- id: max
  doc: ': turn all heuristic filters off (slow)'
  type: boolean
  inputBinding:
    prefix: --max
- id: no_hmm
  doc: ': skip all HMM filter stages, use only CM (slow)'
  type: boolean
  inputBinding:
    prefix: --nohmm
- id: mid
  doc: ': skip first two HMM filter stages (SSV & Vit)'
  type: boolean
  inputBinding:
    prefix: --mid
- id: default
  doc: ': default: run search space size-dependent pipeline  [default]'
  type: boolean
  inputBinding:
    prefix: --default
- id: rf_am
  doc: ': set heuristic filters at Rfam-level (fast)'
  type: boolean
  inputBinding:
    prefix: --rfam
- id: hmm_only
  doc: ": use HMM only, don't use a CM at all"
  type: boolean
  inputBinding:
    prefix: --hmmonly
- id: fz
  doc: ': set filters to defaults used for a search space of size <x> Mb'
  type: string
  inputBinding:
    prefix: --FZ
- id: fmid
  doc: ': with --mid, set P-value threshold for HMM stages to <x>  [0.02]'
  type: string
  inputBinding:
    prefix: --Fmid
- id: not_run_c
  doc: ': do not allow truncated hits at sequence termini'
  type: boolean
  inputBinding:
    prefix: --notrunc
- id: any_trunc
  doc: ': allow full and truncated hits anywhere within sequences'
  type: boolean
  inputBinding:
    prefix: --anytrunc
- id: no_null_three
  doc: ': turn off the NULL3 post hoc additional null model'
  type: boolean
  inputBinding:
    prefix: --nonull3
- id: mx_size
  doc: ': set max allowed alnment mx size to <x> Mb [df: autodetermined]'
  type: string
  inputBinding:
    prefix: --mxsize
- id: smx_size
  doc: ': set max allowed size of search DP matrices to <x> Mb  [128.]'
  type: string
  inputBinding:
    prefix: --smxsize
- id: cy_k
  doc: ': use scanning CM CYK algorithm, not Inside in final stage'
  type: boolean
  inputBinding:
    prefix: --cyk
- id: acy_k
  doc: ': align hits with CYK, not optimal accuracy'
  type: boolean
  inputBinding:
    prefix: --acyk
- id: wcx
  doc: ': set W (expected max hit len) as <x> * cm->clen (model len)'
  type: string
  inputBinding:
    prefix: --wcx
- id: top_only
  doc: ': only search the top strand'
  type: boolean
  inputBinding:
    prefix: --toponly
- id: bottom_only
  doc: ': only search the bottom strand'
  type: boolean
  inputBinding:
    prefix: --bottomonly
- id: t_format
  doc: ': assert target <seqdb> is in format <s>: no autodetection'
  type: string
  inputBinding:
    prefix: --tformat
- id: cpu
  doc: ': number of parallel CPU workers to use for multithreads'
  type: string
  inputBinding:
    prefix: --cpu
- id: cm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_db
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- cmsearch
