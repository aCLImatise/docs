#!/usr/bin/env cwl-runner

baseCommand:
- vcf2bed.pl
class: CommandLineTool
cwlVersion: v1.0
id: vcf2bed.pl
inputs:
- doc: ''
  id: perl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: vcf2bedpl
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: input_file_name
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: cg
  inputBinding:
    position: 3
  type: string
