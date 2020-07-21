class: CommandLineTool
id: ../../../pairtools_restrict.cwl
inputs:
- id: frags
  doc: a tab-separated BED file with the positions of restriction fragments (chrom,
    start, end). Can be generated using cooler digest.  [required]
  type: string
  inputBinding:
    prefix: --frags
- id: output
  doc: output .pairs/.pairsam file. If the path ends with .gz/.lz4, the output is
    compressed by pbgzip/lz4c. By default, the output is printed into stdout.
  type: string
  inputBinding:
    prefix: --output
- id: nproc_in
  doc: 'Number of processes used by the auto-guessed input decompressing command.  [default:
    3]'
  type: long
  inputBinding:
    prefix: --nproc-in
- id: nproc_out
  doc: 'Number of processes used by the auto-guessed output compressing command.  [default:
    8]'
  type: long
  inputBinding:
    prefix: --nproc-out
- id: cmd_in
  doc: 'A command to decompress the input file. If provided, fully overrides the auto-guessed
    command. Does not work with stdin. Must read input from stdin and print output
    into stdout. EXAMPLE: pbgzip -dc -n 3'
  type: string
  inputBinding:
    prefix: --cmd-in
- id: cmd_out
  doc: 'A command to compress the output file. If provided, fully overrides the auto-guessed
    command. Does not work with stdout. Must read input from stdin and print output
    into stdout. EXAMPLE: pbgzip -c -n 8'
  type: string
  inputBinding:
    prefix: --cmd-out
- id: pairs_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pairtools
- restrict
