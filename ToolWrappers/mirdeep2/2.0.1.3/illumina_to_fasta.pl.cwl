class: CommandLineTool
id: illumina_to_fasta.pl.cwl
inputs:
- id: in_format_is_qseqtxt
  doc: format is qseq.txt
  type: boolean?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- illumina_to_fasta.pl
