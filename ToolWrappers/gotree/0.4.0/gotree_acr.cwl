class: CommandLineTool
id: gotree_acr.cwl
inputs:
- id: in_algo
  doc: 'Parsimony algorithm for resolving ambiguities: acctran, deltran, or downpass
    (default "acctran")'
  type: string
  inputBinding:
    prefix: --algo
- id: in_input
  doc: Input tree (default "stdin")
  type: string
  inputBinding:
    prefix: --input
- id: in_out_states
  doc: Output mapping file between node names and states (default "none")
  type: File
  inputBinding:
    prefix: --out-states
- id: in_output
  doc: Output file (default "stdout")
  type: File
  inputBinding:
    prefix: --output
- id: in_random_resolve
  doc: 'Random resolve states when several possibilities in: acctran, deltran, or
    downpass'
  type: boolean
  inputBinding:
    prefix: --random-resolve
- id: in_states
  doc: 'Tip state file (One line per tip, tab separated: tipname\tstate) (default
    "stdin")'
  type: File
  inputBinding:
    prefix: --states
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string
  inputBinding:
    prefix: --format
- id: in_seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: Number of threads (Max=8) (default 1)
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_states
  doc: Output mapping file between node names and states (default "none")
  type: File
  outputBinding:
    glob: $(inputs.in_out_states)
- id: out_output
  doc: Output file (default "stdout")
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- gotree
- acr
