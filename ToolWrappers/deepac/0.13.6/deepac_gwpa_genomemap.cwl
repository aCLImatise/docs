class: CommandLineTool
id: deepac_gwpa_genomemap.cwl
inputs:
- id: in_dir_fragmented_genomes
  doc: Directory containing the fragmented genomes (.fasta)
  type: Directory?
  inputBinding:
    prefix: --dir-fragmented-genomes
- id: in_dir_fragmented_genomes_preds
  doc: "Directory containing the predictions (.npy) of the\nfragmented genomes"
  type: Directory?
  inputBinding:
    prefix: --dir-fragmented-genomes-preds
- id: in_genomes_dir
  doc: Directory containing genomes (.genome)
  type: Directory?
  inputBinding:
    prefix: --genomes-dir
- id: in_out_dir
  doc: "Output directory\n"
  type: Directory?
  inputBinding:
    prefix: --out-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: "Output directory\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepac:0.13.6--py_0
cwlVersion: v1.1
baseCommand:
- deepac
- gwpa
- genomemap
