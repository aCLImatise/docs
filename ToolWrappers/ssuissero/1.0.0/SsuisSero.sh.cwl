class: CommandLineTool
id: SsuisSero.sh.cwl
inputs:
- id: in_raw_reads
  doc: raw reads
  type: string?
  inputBinding:
    prefix: -i
- id: in_path_output_directory
  doc: path to output directory
  type: File?
  inputBinding:
    prefix: -o
- id: in_sample_name
  doc: sample name
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_threads
  doc: number of threads [4]
  type: boolean?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_output_directory
  doc: path to output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_path_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- SsuisSero.sh
