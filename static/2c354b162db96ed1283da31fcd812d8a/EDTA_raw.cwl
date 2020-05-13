class: CommandLineTool
id: EDTA_raw.pl.cwl
inputs:
- id: genome
  doc: '[File]  The genome FASTA'
  type: boolean
  inputBinding:
    prefix: --genome
- id: species
  doc: '[rice|maize|others]   Specify the species for identification of TIR candidates.
    Default: others'
  type: boolean
  inputBinding:
    prefix: --species
- id: type
  doc: '[ltr|tir|helitron|all]  Specify which type of raw TE candidates you want to
    get. Default: all'
  type: boolean
  inputBinding:
    prefix: --type
- id: overwrite
  doc: '[0|1]   If previous results are found, decide to overwrite (1, rerun) or not
    (0, default).'
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: convert_seq_name
  doc: '[0|1]   Convert long sequence name to <= 15 characters and remove annotations
    (1, default) or use the original (0)'
  type: boolean
  inputBinding:
    prefix: --convert_seq_name
- id: threads
  doc: '[int]   Number of theads to run this script. Default: 4'
  type: boolean
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- EDTA_raw.pl
