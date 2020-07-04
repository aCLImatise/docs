class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rust_dipeptide.bak.cwl
inputs:
- id: directory_path_outputfile
  doc: directory  path to outputfile, default is "dipeptide"
  type: string
  inputBinding:
    prefix: -o
- id: transcriptome
  doc: fasta file of transcripts, CDS start and end may be provided on description
    line using tab separation e.g. >NM_0001 10 5000, otherwise it searches for longest
    ORF
  type: string
  inputBinding:
    position: 0
- id: alignment
  doc: sorted bam file of alignments to transcriptome
  type: string
  inputBinding:
    position: 1
- id: offset
  doc: nucleotide offset to A-site
  type: string
  inputBinding:
    position: 2
- id: lengths
  doc: lengths of footprints included, for example 28:32 is 28,29,30,31,32
  type: long
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- rust_dipeptide.bak
