#!/usr/bin/env cwl-runner

baseCommand:
- ssu-esl-afetch
class: CommandLineTool
cwlVersion: v1.0
id: ssu-esl-afetch
inputs:
- doc: ': second cmdline arg is a file of names to retrieve'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ': output alignments to file <f> instead of stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': output alignment to file named <key>'
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: ': specify that <msafile> is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': index the <msafile>, creating <msafile>.ssi'
  id: index
  inputBinding:
    prefix: --index
  type: boolean
