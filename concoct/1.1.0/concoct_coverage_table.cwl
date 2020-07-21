class: CommandLineTool
id: ../../../concoct_coverage_table.py.cwl
inputs:
- id: sample_names
  doc: File with sample names, one line each. Should be same nr of bamfiles. Default
    sample names used are the file names of the bamfiles, excluding the file extension.
  type: string
  inputBinding:
    prefix: --samplenames
- id: bed_file
  doc: "Contigs BEDFile with four columns representing: 'Contig ID, Start Position,\
    \ End Position and SubContig ID' respectively. The Subcontig ID must contain the\
    \ pattern 'concoct_part_[0-9]*' while the contigs which are not cutup cannot contain\
    \ this pattern. This file can be generated by the cut_up_fasta.py script."
  type: string
  inputBinding:
    position: 0
- id: bam_files
  doc: BAM files with mappings to the original contigs.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- concoct_coverage_table.py
