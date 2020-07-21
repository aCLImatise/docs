class: CommandLineTool
id: ../../../positions2snv_invariant_alignment.pl.cwl
inputs:
- id: input
  doc: ':  Input file (snv_align-positions.tsv generated by snv pipeline)'
  type: boolean
  inputBinding:
    prefix: --input
- id: output_dir
  doc: ':  Output directory name (containing an alignment for each chromosome/sequence
    in reference file)'
  type: boolean
  inputBinding:
    prefix: --output-dir
- id: format
  doc: ':  Alignment format (default phylip)'
  type: boolean
  inputBinding:
    prefix: --format
- id: keep_all
  doc: ': Keep all positions in alignment'
  type: boolean
  inputBinding:
    prefix: --keep-all
- id: merge_alignment
  doc: ':  Merge alignment to single file by concatenating individual chromosomes/sequences
    in the reference file'
  type: boolean
  inputBinding:
    prefix: --merge-alignment
- id: reference_file
  doc: ':  Reference file'
  type: boolean
  inputBinding:
    prefix: --reference-file
- id: verbose
  doc: ': Print more information'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- positions2snv_invariant_alignment.pl
