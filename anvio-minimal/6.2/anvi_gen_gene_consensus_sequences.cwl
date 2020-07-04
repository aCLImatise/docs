class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_gen_gene_consensus_sequences.cwl
inputs:
- id: compress_samples
  doc: Normally all samples with variation will have their own consensus sequence.
    If this flag is provided, the coverages from each sample of interest will be summed
    and only a single consenus sequence for each gene/contig will be output.
  type: boolean
  inputBinding:
    prefix: --compress-samples
- id: profile_db
  doc: Anvi'o profile database
  type: string
  inputBinding:
    prefix: --profile-db
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: gene_caller_ids
  doc: Gene caller ids. Multiple of them can be declared separated by a delimiter
    (the default is a comma). In anvi-gen-variability-profile, if you declare nothing
    you will get all genes matching your other filtering criteria. In other programs,
    you may get everything, nothing, or an error. It really depends on the situation.
    Fortunately, mistakes are cheap, so it's worth a try.
  type: string
  inputBinding:
    prefix: --gene-caller-ids
- id: genes_of_interest
  doc: A file with anvi'o gene caller IDs. There should be only one column in the
    file, and each line should correspond to a unique gene caller id (without a column
    header).
  type: File
  inputBinding:
    prefix: --genes-of-interest
- id: samples_of_interest
  doc: A file with samples names. There should be only one column in the file, and
    each line should correspond to a unique sample name (without a column header).
  type: File
  inputBinding:
    prefix: --samples-of-interest
- id: output_file
  doc: The output file name. The boring default is "genes.fa". You can change the
    output file format to a TAB-delimited file using teh flag `--tab-delimited`, in
    which case please do not forget to change the file name, too.
  type: File
  inputBinding:
    prefix: --output-file
- id: tab_delimited
  doc: Use the TAB-delimited format for the output file.
  type: boolean
  inputBinding:
    prefix: --tab-delimited
- id: engine
  doc: Variability engine. The default is 'NT'.
  type: string
  inputBinding:
    prefix: --engine
- id: contigs_mode
  doc: Use this flag to output consensus sequences of contigs, instead of the default,
    which is genes
  type: boolean
  inputBinding:
    prefix: --contigs-mode
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-gen-gene-consensus-sequences
