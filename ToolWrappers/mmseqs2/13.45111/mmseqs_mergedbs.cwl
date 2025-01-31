class: CommandLineTool
id: mmseqs_mergedbs.cwl
inputs:
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
- id: in_prefixes
  doc: Comma separated list of prefixes for each entry []
  type: string?
  inputBinding:
    prefix: --prefixes
- id: in_merge_stop_empty
  doc: Don't continue merging entries after an empty entry [0]
  type: boolean?
  inputBinding:
    prefix: --merge-stop-empty
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0
cwlVersion: v1.1
baseCommand:
- mmseqs
- mergedbs
