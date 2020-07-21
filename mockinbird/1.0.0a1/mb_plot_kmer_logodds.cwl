class: CommandLineTool
id: ../../../mb_plot_kmer_logodds.cwl
inputs:
- id: km_er
  doc: kmer length
  type: string
  inputBinding:
    prefix: --kmer
- id: gff
  doc: remove PAR-CLIP sites overlapping with annotations
  type: string
  inputBinding:
    prefix: --gff
- id: key
  doc: set key that is used for PAR-CLIP site ordering
  type: string
  inputBinding:
    prefix: --key
- id: quantiles
  doc: use quantiles for binarization instead of fixed bin size. Note, if you have
    a small number of bindng sites the bins based on quantiles can overlap!
  type: boolean
  inputBinding:
    prefix: --quantiles
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: keep_tmp_files
  doc: keep temporary files
  type: boolean
  inputBinding:
    prefix: --keep-tmp-files
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-plot-kmer-logodds
