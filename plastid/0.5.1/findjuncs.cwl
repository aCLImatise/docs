class: CommandLineTool
id: ../../../findjuncs.cwl
inputs:
- id: annotation_files
  doc: newly_discovered.bed
  type: string
  inputBinding:
    prefix: --annotation_files
- id: export_top_hat
  doc: Export tophat `.juncs` file in addition to BED output
  type: boolean
  inputBinding:
    prefix: --export_tophat
- id: quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: "Increase verbosity. With '-v', show every warning. With '-vv', turn warnings\
    \ into exceptions. Cannot use with '-q'. (Default: show each type of warning once)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: annotation_format
  doc: 'Format of annotation_files (Default: GTF2). Note: GFF3 assembly assumes SO
    v.2.5.2 feature ontologies, which may or may not match your specific file.'
  type: string
  inputBinding:
    prefix: --annotation_format
- id: add_three
  doc: If supplied, coding regions will be extended by 3 nucleotides at their 3' ends
    (except for GTF2 files that explicitly include `stop_codon` features). Use if
    your annotation file excludes stop codons from CDS.
  type: boolean
  inputBinding:
    prefix: --add_three
- id: tab_ix
  doc: 'annotation_files are tabix-compressed and indexed (Default: False). Ignored
    for BigBed files.'
  type: boolean
  inputBinding:
    prefix: --tabix
- id: sorted
  doc: 'annotation_files are sorted by chromosomal position (Default: False)'
  type: boolean
  inputBinding:
    prefix: --sorted
- id: bed_extra_columns
  doc: 'Number of extra columns in BED file (e.g. in custom ENCODE formats) or list
    of names for those columns. (Default: 0).'
  type: string[]
  inputBinding:
    prefix: --bed_extra_columns
- id: maxmem
  doc: 'Maximum desired memory footprint in MB to devote to BigBed/BigWig files. May
    be exceeded by large queries. (Default: 0, No maximum)'
  type: long
  inputBinding:
    prefix: --maxmem
- id: gff_transcript_types
  doc: 'GFF3 feature types to include as transcripts, even if no exons are present
    (for GFF3 only; default: use SO v2.5.3 specification)'
  type: string[]
  inputBinding:
    prefix: --gff_transcript_types
- id: gff_exon_types
  doc: 'GFF3 feature types to include as exons (for GFF3 only; default: use SO v2.5.3
    specification)'
  type: string[]
  inputBinding:
    prefix: --gff_exon_types
- id: gff_cds_types
  doc: 'GFF3 feature types to include as CDS (for GFF3 only; default: use SO v2.5.3
    specification)'
  type: string[]
  inputBinding:
    prefix: --gff_cds_types
- id: out_base
  doc: Basename for output files
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- findjuncs
