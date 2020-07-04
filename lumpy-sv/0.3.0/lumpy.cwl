class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lumpy.cwl
inputs:
- id: genome_file_defines
  doc: Genome file (defines chromosome order)
  type: boolean
  inputBinding:
    prefix: -g
- id: show_evidence_call
  doc: Show evidence for each call
  type: boolean
  inputBinding:
    prefix: -e
- id: file_read_default
  doc: File read windows size (default 1000000)
  type: boolean
  inputBinding:
    prefix: -w
- id: mw
  doc: minimum weight for a call
  type: boolean
  inputBinding:
    prefix: -mw
- id: msw
  doc: minimum per-sample weight for a call
  type: boolean
  inputBinding:
    prefix: -msw
- id: tt
  doc: trim threshold
  type: boolean
  inputBinding:
    prefix: -tt
- id: exclude_file_bed
  doc: exclude file bed file
  type: boolean
  inputBinding:
    prefix: -x
- id: temp_file_prefix
  doc: temp file prefix, must be to a writeable directory
  type: boolean
  inputBinding:
    prefix: -t
- id: output_probability_curve
  doc: output probability curve for each variant
  type: boolean
  inputBinding:
    prefix: -P
- id: output_instead_vcf
  doc: output BEDPE instead of VCF
  type: boolean
  inputBinding:
    prefix: -b
- id: sr
  doc: bam_file:<file name>, id:<sample name>, back_distance:<distance>, min_mapping_threshold:<mapping
    quality>, weight:<sample weight>, min_clip:<minimum clip length>, read_group:<string>
  type: boolean
  inputBinding:
    prefix: -sr
- id: pe
  doc: bam_file:<file name>, id:<sample name>, histo_file:<file name>, mean:<value>,
    stdev:<value>, read_length:<length>, min_non_overlap:<length>, discordant_z:<z
    value>, back_distance:<distance>, min_mapping_threshold:<mapping quality>, weight:<sample
    weight>, read_group:<string>
  type: boolean
  inputBinding:
    prefix: -pe
- id: bed_pe
  doc: bedpe_file:<bedpe file>, id:<sample name>, weight:<sample weight>
  type: boolean
  inputBinding:
    prefix: -bedpe
outputs: []
cwlVersion: v1.1
baseCommand:
- lumpy
