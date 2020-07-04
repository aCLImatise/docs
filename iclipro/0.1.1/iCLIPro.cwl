class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/iCLIPro.cwl
inputs:
- id: output_folder_default
  doc: output folder (default is cwd - current working directory)
  type: Directory
  inputBinding:
    prefix: -o
- id: genomic_bin_size
  doc: 'genomic bin size (100..1000, default: 300)'
  type: long
  inputBinding:
    prefix: -b
- id: number_reads_default
  doc: 'number of reads required in bin (20..500, default: 50)'
  type: long
  inputBinding:
    prefix: -r
- id: flanking_distances_calculating
  doc: 'flanking distances when calculating start site overlap ratio (3..15, default:
    5)'
  type: long
  inputBinding:
    prefix: -s
- id: use_only_reads
  doc: 'use only reads with minimum mapping quality (mapq) (0..100, default: 10)'
  type: long
  inputBinding:
    prefix: -q
- id: read_len_groups
  doc: 'read len groups (e.g.: "A:16-39,A1:16-25,A2:26-32,A3:33-39,L:20,B:42")'
  type: string
  inputBinding:
    prefix: -g
- id: generate_read_overlap
  doc: 'generate read overlap maps based on these comparisons (e.g.: "A1-A3,A2-A3,A1-B,A2-B,A3-B,L-B,A-B")'
  type: string
  inputBinding:
    prefix: -p
- id: flanking_region_read
  doc: 'flanking region for read overlap maps (default: 50)'
  type: long
  inputBinding:
    prefix: -f
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- iCLIPro
