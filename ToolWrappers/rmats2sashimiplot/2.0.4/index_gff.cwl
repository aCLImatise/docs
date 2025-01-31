class: CommandLineTool
id: index_gff.cwl
inputs:
- id: in_index
  doc: "Index the given GFF. Takes as arguments as GFF filename\nand an output directory."
  type: File?
  inputBinding:
    prefix: --index
- id: in_compress_id
  doc: "Use the compressed version of the GFF 'ID=' field rather\nthan the ID itself\
    \ when creating .miso output filenames.\n"
  type: boolean?
  inputBinding:
    prefix: --compress-id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_index
  doc: "Index the given GFF. Takes as arguments as GFF filename\nand an output directory."
  type: File?
  outputBinding:
    glob: $(inputs.in_index)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rmats2sashimiplot:2.0.4--py39h6a678da_2
cwlVersion: v1.1
baseCommand:
- index_gff
