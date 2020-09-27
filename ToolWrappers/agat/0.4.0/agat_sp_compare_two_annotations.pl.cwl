class: CommandLineTool
id: agat_sp_compare_two_annotations.pl.cwl
inputs:
- id: in_gff_one
  doc: Input GTF/GFF file1.
  type: boolean
  inputBinding:
    prefix: -gff1
- id: in_gff_two
  doc: Input GTF/GFF file2.
  type: boolean
  inputBinding:
    prefix: -gff2
- id: in__output_
  doc: ", --output , --out or --outfile\nOutput GFF file. If no output file is specified,\
    \ the output will\nbe written to STDOUT."
  type: File
  inputBinding:
    prefix: -o
- id: in_verbose_option_make
  doc: "Verbose option, make it easier to follow what is going on for\ndebugging purpose."
  type: boolean
  inputBinding:
    prefix: -v
- id: in_agat_sp_compare_two_annotations_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_
  doc: ", --output , --out or --outfile\nOutput GFF file. If no output file is specified,\
    \ the output will\nbe written to STDOUT."
  type: File
  outputBinding:
    glob: $(inputs.in__output_)
cwlVersion: v1.1
baseCommand:
- agat_sp_compare_two_annotations.pl
