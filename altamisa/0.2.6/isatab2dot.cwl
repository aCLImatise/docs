#!/usr/bin/env cwl-runner

baseCommand:
- isatab2dot
class: CommandLineTool
cwlVersion: v1.0
id: isatab2dot
inputs:
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
