class: CommandLineTool
id: ExtractCogs.py.cwl
inputs:
- id: in_blast_outfile
  doc: "Output of rpsblast run, assumed to be in tabular\nformat whith columns: qseqid\
    \ sseqid evalue pident\nscore qstart qend sstart send length slen. The contigs\n\
    ids are assumed to be recoverable by removing the last\nunderscore and the characters\
    \ following it from the\nqseqid column."
  type: long?
  inputBinding:
    prefix: --blastoutfile
- id: in_sco_vs_threshold
  doc: Threshold covered in percent, default=50.0
  type: double?
  inputBinding:
    prefix: --scovs-threshold
- id: in_p_ident_threshold
  doc: Threshold identity in percent, default=0.0
  type: double?
  inputBinding:
    prefix: --pident-threshold
- id: in_cdd_cog_file
  doc: "Supply a cdd to cog mapping file in a tsv format to\ntake precedence over\
    \ eutils fetching of name. Useful\nif running this script in parallel, since NCBI\
    \ eutils\nhas a limit on the number of requests per time unit\nyou can make."
  type: File?
  inputBinding:
    prefix: --cdd_cog_file
- id: in_gff_file
  doc: "GFF file generated by e.g. prodigal only needed if the\ncontig names are not\
    \ recoverable from the blast output\nfile.\n"
  type: File?
  inputBinding:
    prefix: --gfffile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_gff_file
  doc: "GFF file generated by e.g. prodigal only needed if the\ncontig names are not\
    \ recoverable from the blast output\nfile.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_gff_file)
hints: []
cwlVersion: v1.1
baseCommand:
- ExtractCogs.py
