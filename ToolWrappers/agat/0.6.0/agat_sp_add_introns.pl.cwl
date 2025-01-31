class: CommandLineTool
id: agat_sp_add_introns.pl.cwl
inputs:
- id: in_ref_file
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: -reffile
- id: in_output
  doc: Output gff3 file where the gene incriminated will be write.
  type: File?
  inputBinding:
    prefix: --output
- id: in_features_dot
  doc: "Usage:\nagat_sp_add_introns.pl --gff infile --out outFile\nagat_sp_add_introns.pl\
    \ --help"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output gff3 file where the gene incriminated will be write.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.0--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_add_introns.pl
