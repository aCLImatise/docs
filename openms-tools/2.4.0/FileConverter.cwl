#!/usr/bin/env cwl-runner

baseCommand:
- FileConverter
class: CommandLineTool
cwlVersion: v1.0
id: fileconverter
inputs:
- doc: "*        Input file to convert. (valid formats: 'mzData', 'mzXML', 'mzML',\
    \ 'cachedMzML', 'dta', 'dta2d', 'mgf', 'featureXML', 'consensusXML', 'ms2', 'fid',\
    \ 'tsv', 'peplist', 'kroenik', 'edta')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*       Output file (valid formats: 'mzData', 'mzXML', 'mzML', 'cachedMzML',\
    \ 'dta2d', 'mgf', 'featureXML', 'consensusXML', 'edta', 'csv')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
