class: CommandLineTool
id: VcfLeftNormalize.cwl
inputs:
- id: in_in
  doc: "Input VCF file. If unset, reads from STDIN.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output VCF list. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_ref
  doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -ref
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- VcfLeftNormalize
