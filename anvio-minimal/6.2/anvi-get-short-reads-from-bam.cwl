#!/usr/bin/env cwl-runner

baseCommand:
- anvi-get-short-reads-from-bam
class: CommandLineTool
cwlVersion: v1.0
id: anvi-get-short-reads-from-bam
inputs:
- doc: Anvi'o profile database
  id: profile_db
  inputBinding:
    prefix: --profile-db
  type: string
- doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  id: contigs_db
  inputBinding:
    prefix: --contigs-db
  type: string
- doc: Collection name.
  id: collection_name
  inputBinding:
    prefix: --collection-name
  type: string
- doc: Bin name you are interested in.
  id: bin_id
  inputBinding:
    prefix: --bin-id
  type: string
- doc: Text file for bins (each line should be a unique bin id).
  id: bin_ids_file
  inputBinding:
    prefix: --bin-ids-file
  type: File
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
- doc: A prefix to be used while naming the output files (no file type extensions
    please; just a prefix).
  id: output_file_prefix
  inputBinding:
    prefix: --output-file-prefix
  type: File
- doc: When declared, output file(s) will be gzip compressed and the extension `.gz`
    will be added.
  id: gzip_output
  inputBinding:
    prefix: --gzip-output
  type: boolean
- doc: 'When declared, this program outputs 3 FASTA files for paired-end reads: one
    for R1, one for R2, and one for unpaired reads.'
  id: split_r1_and_r2
  inputBinding:
    prefix: --split-R1-and-R2
  type: boolean
