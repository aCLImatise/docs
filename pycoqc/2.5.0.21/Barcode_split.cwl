class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Barcode_split.cwl
inputs:
- id: summary_file
  doc: '[SUMMARY_FILE [SUMMARY_FILE ...]], -f [SUMMARY_FILE [SUMMARY_FILE ...]] Path
    to a sequencing_summary generated by Albacore 1.0.0 + (read_fast5_basecaller.py)
    / Guppy 2.1.3+ (guppy_basecaller). One can also pass multiple space separated
    file paths or a UNIX style regex matching multiple files'
  type: boolean
  inputBinding:
    prefix: --summary_file
- id: barcode_file
  doc: '[BARCODE_FILE [BARCODE_FILE ...]], -b [BARCODE_FILE [BARCODE_FILE ...]] Path
    to the barcode_file generated by Guppy 2.1.3+ (guppy_barcoder) or Deepbinner 0.2.0+.
    One can also pass multiple space separated file paths or a UNIX style regex matching
    multiple files'
  type: boolean
  inputBinding:
    prefix: --barcode_file
- id: output_dir
  doc: 'Folder where to output split barcode data (default: current dir'
  type: string
  inputBinding:
    prefix: --output_dir
- id: output_unclassified
  doc: If given, unclassified barcodes are also written in a file. By default they
    are skiped
  type: boolean
  inputBinding:
    prefix: --output_unclassified
- id: min_barcode_percent
  doc: 'Minimal percent of total reads to retain barcode label. If below, the barcode
    value is set as `unclassified` (default: 0.1)'
  type: long
  inputBinding:
    prefix: --min_barcode_percent
- id: verbose
  doc: Increase verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Reduce verbosity
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- Barcode_split
