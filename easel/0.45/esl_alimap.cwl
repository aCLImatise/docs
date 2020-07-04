class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/esl_alimap.cwl
inputs:
- id: quiet_print_mapping
  doc: ": be quiet, don't print mapping of each column"
  type: boolean
  inputBinding:
    prefix: -q
- id: mask_a_two_a
  doc: ": mask to <f>:'1'=msa1 aln       col x maps msa2 aln col"
  type: string
  inputBinding:
    prefix: --mask-a2a
- id: mask_at_worf
  doc: ": mask to <f>:'1'=msa1 aln       col x maps msa2 nongap RF col"
  type: string
  inputBinding:
    prefix: --mask-a2rf
- id: mask_rf_two_a
  doc: ": mask to <f>:'1'=msa1 nongap RF col x maps msa2 aln col"
  type: string
  inputBinding:
    prefix: --mask-rf2a
- id: mask_rf_two_rf
  doc: ": mask to <f>:'1'=msa1 nongap RF col x maps msa2 nongap RF col"
  type: string
  inputBinding:
    prefix: --mask-rf2rf
- id: submap
  doc: ': <msafile2> is subaln of <msafile1>, output mask to <f>'
  type: string
  inputBinding:
    prefix: --submap
- id: amino
  doc: ': <msafile{1,2}> contain protein alignments'
  type: boolean
  inputBinding:
    prefix: --amino
- id: dna
  doc: ': <msafile{1,2}> contain DNA alignments'
  type: boolean
  inputBinding:
    prefix: --dna
- id: rna
  doc: ': <msafile{1,2}> contain RNA alignments'
  type: boolean
  inputBinding:
    prefix: --rna
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-alimap
