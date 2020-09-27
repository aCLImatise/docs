class: CommandLineTool
id: reliability_profile.pl.cwl
inputs:
- id: in_man
  doc: Full documentation
  type: boolean
  inputBinding:
    prefix: --man
- id: in_seqname
  doc: Project to sequence name
  type: string
  inputBinding:
    prefix: --seqname
- id: in_dont_predict
  doc: Turn off predicting. (def=on)
  type: boolean
  inputBinding:
    prefix: --dont-predict
- id: in_fit_penalty
  doc: Penalty for on/off switching in fit
  type: string
  inputBinding:
    prefix: --fit-penalty
- id: in_position_penalty
  doc: Position dependent penalty for calculating fit.
  type: boolean
  inputBinding:
    prefix: --position-penalty
- id: in_fit_once_on
  doc: Restrict fitting to being exactly once on
  type: boolean
  inputBinding:
    prefix: --fit-once-on
- id: in_title
  doc: Title of plot
  type: string
  inputBinding:
    prefix: --title
- id: in_out
  doc: Output filename
  type: File
  inputBinding:
    prefix: --out
- id: in_offset
  doc: Offset of sequence in genome
  type: string
  inputBinding:
    prefix: --offset
- id: in_signals
  doc: "List of (from,to,orientation) triples. Show signals in plot and\ncompared\
    \ infered signal to them. Give list as string \"from0 to0\norientation0;from1\
    \ to1 orientation1 ...\" Specify multi-range signals\nby from0a to0a from0b to0b\
    \ ..."
  type: string
  inputBinding:
    prefix: --signals
- id: in_structure_weight
  doc: Weight of structure against sequence (1.0)
  type: double
  inputBinding:
    prefix: --structure-weight
- id: in_position_penalty_weight
  doc: Weight of the position penalty
  type: string
  inputBinding:
    prefix: --position-penalty-weight
- id: in_show_sw
  doc: Show the influence of structure weight in the plot
  type: boolean
  inputBinding:
    prefix: --show-sw
- id: in_beta
  doc: Inverse temperature beta
  type: string
  inputBinding:
    prefix: --beta
- id: in_dont_plot
  doc: Skip plotting, only output
  type: boolean
  inputBinding:
    prefix: --dont-plot
- id: in_write_r_script
  doc: Write the R script to file
  type: File
  inputBinding:
    prefix: --write-R-script
- id: in_rev_compl
  doc: Plot and fit a reverse complement
  type: boolean
  inputBinding:
    prefix: --revcompl
- id: in_write_subseq
  doc: Write the subsequence of fit
  type: boolean
  inputBinding:
    prefix: --write-subseq
- id: in_output_format
  doc: Output format (f = pdf or png, def=pdf)
  type: string
  inputBinding:
    prefix: --output-format
- id: in_show_fit_on_off
  doc: Show the on/off values for the fit
  type: boolean
  inputBinding:
    prefix: --show-fitonoff
- id: in_use_consistency
  doc: "Uses the file generated by the --consistency command e.g.\nresult.bmreliability-cbt"
  type: boolean
  inputBinding:
    prefix: --use-consistency
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output filename
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- reliability-profile.pl
