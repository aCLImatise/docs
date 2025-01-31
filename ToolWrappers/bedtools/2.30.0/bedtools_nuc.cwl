class: CommandLineTool
id: bedtools_nuc.cwl
inputs:
- id: in_fi
  doc: Input FASTA file
  type: boolean?
  inputBinding:
    prefix: -fi
- id: in_bed
  doc: BED/GFF/VCF file of ranges to extract from -fi
  type: boolean?
  inputBinding:
    prefix: -bed
- id: in_profile_sequence_according
  doc: Profile the sequence according to strand.
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_seq
  doc: Print the extracted sequence
  type: boolean?
  inputBinding:
    prefix: -seq
- id: in_pattern
  doc: "Report the number of times a user-defined sequence\nis observed (case-sensitive)."
  type: boolean?
  inputBinding:
    prefix: -pattern
- id: in_ignore_case_pattern
  doc: Ignore case when matching -pattern. By defaulty, case matters.
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_full_header
  doc: "Use full fasta header.\n- By default, only the word before the first space\
    \ or tab is used."
  type: boolean?
  inputBinding:
    prefix: -fullHeader
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0
cwlVersion: v1.1
baseCommand:
- bedtools
- nuc
