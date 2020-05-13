class: CommandLineTool
id: postCAqc.cwl
inputs:
- id: i
  doc: (.inserts file) and -d (dstmap) allow to specify a map from the library ids
    listed in the .frg file to database ids (cat_nos).  The inserts file is automatically
    generated by pullfrag and the dstmap is automatically generated by pfl.pl.
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- postCAqc
