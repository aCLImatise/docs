#!/usr/bin/env cwl-runner

baseCommand:
- BICseqMulSample.pl
class: CommandLineTool
cwlVersion: v1.0
id: bicseqmulsample.pl
inputs:
- doc: ': the (positive) penalty used for BIC-seq'
  id: lambda
  inputBinding:
    prefix: --lambda
  type: double
- doc: ': the tmp directory; If unspecified, use /tmp/tmpq0pilrwk/bin/tmp/'
  id: tmp
  inputBinding:
    prefix: --tmp
  type: string
- doc: ': plot the CNV profile in a png file'
  id: fig
  inputBinding:
    prefix: --fig
  type: string
- doc: ': the title of the figure'
  id: title
  inputBinding:
    prefix: --title
  type: string
- doc: ': perform bootstrap test to assign confidence'
  id: bootstrap
  inputBinding:
    prefix: --bootstrap
  type: boolean
- doc: ': do not automatically adjust the lambda parameter according to the noise
    level in the data'
  id: no_scale
  inputBinding:
    prefix: --noscale
  type: boolean
- doc: ': if specified, use a more stringent method to ajust the lambda parameter'
  id: strict
  inputBinding:
    prefix: --strict
  type: boolean
- doc: ': print the detailed information of the segmentaion result'
  id: detail
  inputBinding:
    prefix: --detail
  type: boolean
