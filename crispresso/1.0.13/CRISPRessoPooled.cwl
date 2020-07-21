class: CommandLineTool
id: ../../../CRISPRessoPooled.cwl
inputs:
- id: trim_sequences
  doc: 'Enable the trimming of Illumina adapters with Trimmomatic (default: False)'
  type: boolean
  inputBinding:
    prefix: --trim_sequences
- id: trim_mo_matic_options_string
  doc: 'Override options for Trimmomatic (default: ILLUMINACLIP:/tmp/tmplwqo0wwj/lib/python2.7/site-
    packages/CRISPResso/data/NexteraPE- PE.fa:0:90:10:0:true MINLEN:40)'
  type: string
  inputBinding:
    prefix: --trimmomatic_options_string
- id: min_paired_end_reads_overlap
  doc: 'Minimum required overlap length between two reads to provide a confident overlap.
    (default: 4)'
  type: long
  inputBinding:
    prefix: --min_paired_end_reads_overlap
- id: max_paired_end_reads_overlap
  doc: 'parameter for the flash merging step, this parameter is the maximum overlap
    length expected in approximately 90% of read pairs. Please see the flash manual
    for more information. (default: 100)'
  type: long
  inputBinding:
    prefix: --max_paired_end_reads_overlap
- id: hide_mutations_outside_window_nhej
  doc: 'This parameter allows to visualize only the mutations overlapping the cleavage
    site and used to classify a read as NHEJ. This parameter has no effect on the
    quanitification of the NHEJ. It may be helpful to mask a pre-existing and known
    mutations or sequencing errors outside the window used for quantification of NHEJ
    events. (default: False)'
  type: boolean
  inputBinding:
    prefix: --hide_mutations_outside_window_NHEJ
- id: window_around_sg_rna
  doc: 'Window(s) in bp around the cleavage position (half on on each side) as determined
    by the provide guide RNA sequence to quantify the indels. Any indels outside this
    window are excluded. A value of 0 disables this filter. (default: 1)'
  type: string
  inputBinding:
    prefix: --window_around_sgrna
- id: cleavage_offset
  doc: "Cleavage offset to use within respect to the 3' end of the provided sgRNA\
    \ sequence. Remember that the sgRNA sequence must be entered without the PAM.\
    \ The default is -3 and is suitable for the SpCas9 system. For alternate nucleases,\
    \ other cleavage offsets may be appropriate, for example, if using Cpf1 this parameter\
    \ would be set to 1. (default: -3)"
  type: string
  inputBinding:
    prefix: --cleavage_offset
- id: exclude_bp_from_left
  doc: 'Exclude bp from the left side of the amplicon sequence for the quantification
    of the indels (default: 15)'
  type: string
  inputBinding:
    prefix: --exclude_bp_from_left
- id: exclude_bp_from_right
  doc: 'Exclude bp from the right side of the amplicon sequence for the quantification
    of the indels (default: 15)'
  type: string
  inputBinding:
    prefix: --exclude_bp_from_right
- id: hdr_perfect_alignment_threshold
  doc: 'Sequence homology % for an HDR occurrence (default: 98.0)'
  type: string
  inputBinding:
    prefix: --hdr_perfect_alignment_threshold
- id: ignore_substitutions
  doc: 'Ignore substitutions events for the quantification and visualization (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --ignore_substitutions
- id: ignore_insertions
  doc: 'Ignore insertions events for the quantification and visualization (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --ignore_insertions
- id: ignore_deletions
  doc: 'Ignore deletions events for the quantification and visualization (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --ignore_deletions
- id: needle_options_string
  doc: 'Override options for the Needle aligner (default: -gapopen=10 -gapextend=0.5
    -awidth3=5000)'
  type: string
  inputBinding:
    prefix: --needle_options_string
- id: keep_intermediate
  doc: 'Keep all the intermediate files (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_intermediate
- id: dump
  doc: 'Dump numpy arrays and pandas dataframes to file for debugging purposes (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --dump
- id: save_also_png
  doc: 'Save also .png images additionally to .pdf files (default: False)'
  type: boolean
  inputBinding:
    prefix: --save_also_png
- id: r_one
  doc: ''
  type: string
  inputBinding:
    prefix: -r1
- id: r_two
  doc: ''
  type: string
  inputBinding:
    prefix: -r2
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- CRISPRessoPooled
