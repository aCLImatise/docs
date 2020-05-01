#!/usr/bin/env cwl-runner

baseCommand:
- pycoQC
class: CommandLineTool
cwlVersion: v1.0
id: pycoqc
inputs:
- doc: Increase verbosity
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Reduce verbosity
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: '[SUMMARY_FILE [SUMMARY_FILE ...]], -f [SUMMARY_FILE [SUMMARY_FILE ...]] Path
    to a sequencing_summary generated by Albacore 1.0.0 + (read_fast5_basecaller.py)
    / Guppy 2.1.3+ (guppy_basecaller). One can also pass multiple space separated
    file paths or a UNIX style regex matching multiple files (Required)'
  id: summary_file
  inputBinding:
    prefix: --summary_file
  type: boolean
- doc: '[BARCODE_FILE [BARCODE_FILE ...]], -b [BARCODE_FILE [BARCODE_FILE ...]] Path
    to the barcode_file generated by Guppy 2.1.3+ (guppy_barcoder) or Deepbinner 0.2.0+.
    This is not a required file. One can also pass multiple space separated file paths
    or a UNIX style regex matching multiple files (optional)'
  id: barcode_file
  inputBinding:
    prefix: --barcode_file
  type: boolean
- doc: '[BAM_FILE [BAM_FILE ...]], -a [BAM_FILE [BAM_FILE ...]] Path to a Bam file
    corresponding to reads in the summary_file. Preferably aligned with Minimap2 One
    can also pass multiple space separated file paths or a UNIX style regex matching
    multiple files (optional)'
  id: bam_file
  inputBinding:
    prefix: --bam_file
  type: boolean
- doc: Path to an output html file report (required if json_outfile not given)
  id: html_outfile
  inputBinding:
    prefix: --html_outfile
  type: string
- doc: Path to an output json file report (required if html_outfile not given)
  id: json_outfile
  inputBinding:
    prefix: --json_outfile
  type: string
- doc: "Minimum quality to consider a read as 'pass' (default: 7)"
  id: min_pass_qual
  inputBinding:
    prefix: --min_pass_qual
  type: long
- doc: "Minimum read length to consider a read as 'pass' (default: 0)"
  id: min_pass_len
  inputBinding:
    prefix: --min_pass_len
  type: long
- doc: 'If given, reads flagged as calibration strand by the basecaller are removed
    (default: False)'
  id: filter_calibration
  inputBinding:
    prefix: --filter_calibration
  type: boolean
- doc: 'If given, duplicated read_ids are removed but the first occurence is kept
    (Guppy sometimes outputs the same read multiple times) (default: False)'
  id: filter_duplicated
  inputBinding:
    prefix: --filter_duplicated
  type: boolean
- doc: 'Minimal percent of total reads to retain barcode label. If below, the barcode
    value is set as `unclassified` (default: 0.1)'
  id: min_barcode_percent
  inputBinding:
    prefix: --min_barcode_percent
  type: long
- doc: 'Title to use in the html report (default: PycoQC report)'
  id: report_title
  inputBinding:
    prefix: --report_title
  type: string
- doc: 'Jinja2 html template for the html report (default: )'
  id: template_file
  inputBinding:
    prefix: --template_file
  type: string
- doc: "Path to a JSON configuration file for the html report. If not provided, looks\
    \ for it in ~/.pycoQC and ~/.config/pycoQC/config. If it's still not found, falls\
    \ back to default parameters. The first level keys are the names of the plots\
    \ to be included. The second level keys are the parameters to pass to each plotting\
    \ function (default: )\")"
  id: config_file
  inputBinding:
    prefix: --config_file
  type: string
- doc: 'If not None a n number of reads will be randomly selected instead of the entire
    dataset for ploting function (deterministic sampling) (default: 100000)'
  id: sample
  inputBinding:
    prefix: --sample
  type: string
- doc: 'Print default configuration file. Can be used to generate a template JSON
    file (default: False)'
  id: default_config
  inputBinding:
    prefix: --default_config
  type: boolean
