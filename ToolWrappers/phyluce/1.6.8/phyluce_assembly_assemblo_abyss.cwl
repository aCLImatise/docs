class: CommandLineTool
id: phyluce_assembly_assemblo_abyss.cwl
inputs:
- id: in_output
  doc: The directory in which to store the assembly data
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_km_er
  doc: The kmer value to use
  type: string?
  inputBinding:
    prefix: --kmer
- id: in_cores
  doc: The number of compute cores/threads to run with
  type: long?
  inputBinding:
    prefix: --cores
- id: in_verbosity
  doc: The logging level to use
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File?
  inputBinding:
    prefix: --log-path
- id: in_clean
  doc: Cleanup all intermediate Trinity files
  type: boolean?
  inputBinding:
    prefix: --clean
- id: in_abyss_se
  doc: Only use abyss-se
  type: boolean?
  inputBinding:
    prefix: --abyss-se
- id: in_config
  doc: A configuration file containing reads to assemble
  type: File?
  inputBinding:
    prefix: --config
- id: in_dir
  doc: A directory of reads to assemble
  type: Directory?
  inputBinding:
    prefix: --dir
- id: in_trinity
  doc: --subfolder SUBFOLDER
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_assemblo_abyss
