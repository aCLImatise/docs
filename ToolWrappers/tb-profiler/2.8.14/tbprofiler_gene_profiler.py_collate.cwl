class: CommandLineTool
id: tbprofiler_gene_profiler.py_collate.cwl
inputs:
- id: in_dir
  doc: 'Result directory (default: .)'
  type: Directory?
  inputBinding:
    prefix: --dir
- id: in_suffix
  doc: 'Output file suffix (default: .results.json)'
  type: File?
  inputBinding:
    prefix: --suffix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_suffix
  doc: 'Output file suffix (default: .results.json)'
  type: File?
  outputBinding:
    glob: $(inputs.in_suffix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- tbprofiler_gene_profiler.py
- collate
