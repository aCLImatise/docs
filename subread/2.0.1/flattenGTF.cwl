class: CommandLineTool
id: ../../../flattenGTF.cwl
inputs:
- id: name_annotation_file
  doc: Name of an annotation file in GTF/GFF format.
  type: File
  inputBinding:
    prefix: -a
- id: name_output_file
  doc: Name of output file.
  type: File
  inputBinding:
    prefix: -o
- id: specify_feature_type
  doc: Specify feature type in a GTF annotation. 'exon' by default. Features with
    the specified feature type are extracted from the annotation for processing.
  type: string
  inputBinding:
    prefix: -t
- id: specify_attribute_type
  doc: Specify attribute type in GTF annotation. 'gene_id' by default. This attribute
    type is used to group features into meta- features.
  type: string
  inputBinding:
    prefix: -g
- id: merging_overlapping_exons
  doc: Merging overlapping exons into multiple non-overlapping exons but all the edges
    are kept.
  type: boolean
  inputBinding:
    prefix: -C
outputs: []
cwlVersion: v1.1
baseCommand:
- flattenGTF
