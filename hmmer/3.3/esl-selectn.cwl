#!/usr/bin/env cwl-runner

baseCommand:
- esl-selectn
class: CommandLineTool
cwlVersion: v1.0
id: esl-selectn
inputs:
- doc: ''
  id: n
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: file
  inputBinding:
    position: 1
  type: File
- doc: ''
  id: options
  inputBinding:
    prefix: -options
  type: boolean
