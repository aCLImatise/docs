class: CommandLineTool
id: phizz_build_genes.cwl
inputs:
- id: in_gene_file
  doc: ''
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
- phizz
- build-genes
