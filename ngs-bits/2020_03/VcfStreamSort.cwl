class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/VcfStreamSort.cwl
inputs:
- id: in
  doc: "Input VCF file. If unset, reads from STDIN. Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output VCF list. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: number_variants_cache
  doc: "Number of variants to cache for sorting. Default value: '10000'"
  type: long
  inputBinding:
    prefix: -n
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- VcfStreamSort
