class: CommandLineTool
id: goalign_rename.cwl
inputs:
- id: in_clean_names
  doc: Replaces special characters (tabs, spaces, newick characters) with '-' from
    input sequence names before writing output alignment
  type: boolean?
  inputBinding:
    prefix: --clean-names
- id: in_map_file
  doc: Name Mapping infile (default "none")
  type: File?
  inputBinding:
    prefix: --map-file
- id: in_output
  doc: renamed alignment output file (default "stdout")
  type: File?
  inputBinding:
    prefix: --output
- id: in_regexp
  doc: rename alignment using given regexp (default "none")
  type: string?
  inputBinding:
    prefix: --regexp
- id: in_replace
  doc: replaces regexp matching strings by this string (default "none")
  type: string?
  inputBinding:
    prefix: --replace
- id: in_revert
  doc: Reverse orientation of mapfile
  type: boolean?
  inputBinding:
    prefix: --revert
- id: in_unaligned
  doc: Considers sequences as unaligned and format fasta (phylip, nexus,... options
    are ignored)
  type: boolean?
  inputBinding:
    prefix: --unaligned
- id: in_align
  doc: Alignment input file (default "stdin")
  type: File?
  inputBinding:
    prefix: --align
- id: in_auto_detect
  doc: Auto detects input format (overrides -p, -x and -u)
  type: boolean?
  inputBinding:
    prefix: --auto-detect
- id: in_clustal
  doc: Alignment is in clustal? default fasta
  type: boolean?
  inputBinding:
    prefix: --clustal
- id: in_ignore_identical
  doc: Ignore duplicated sequences that have the same name and same sequences
  type: boolean?
  inputBinding:
    prefix: --ignore-identical
- id: in_input_strict
  doc: Strict phylip input format (only used with -p)
  type: boolean?
  inputBinding:
    prefix: --input-strict
- id: in_nexus
  doc: Alignment is in nexus? default fasta
  type: boolean?
  inputBinding:
    prefix: --nexus
- id: in_no_block
  doc: Write Phylip sequences without space separated blocks (only used with -p)
  type: boolean?
  inputBinding:
    prefix: --no-block
- id: in_one_line
  doc: Write Phylip sequences on 1 line (only used with -p)
  type: boolean?
  inputBinding:
    prefix: --one-line
- id: in_output_strict
  doc: Strict phylip output format (only used with -p)
  type: boolean?
  inputBinding:
    prefix: --output-strict
- id: in_phylip
  doc: Alignment is in phylip? default fasta
  type: boolean?
  inputBinding:
    prefix: --phylip
- id: in_seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: Number of threads (default 1)
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: renamed alignment output file (default "stdout")
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- goalign
- rename
