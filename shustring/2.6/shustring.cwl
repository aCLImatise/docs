#!/usr/bin/env cwl-runner

baseCommand:
- shustring
class: CommandLineTool
cwlVersion: v1.0
id: shustring
inputs:
- doc: '[-q quiet - do not print shustrings; default: print shustrings] [-n nucleotide
    sequence (DNA); default: arbitrary ASCII strings] [-r include reverse complement
    (implies -n); default: only forward strand] [-u preserve IUPAC nomenclature in
    nucleotide sequences; default: convert to ACGT] [-p print information about program]
    [-h print this help message]'
  id: general
  inputBinding:
    position: 0
  type: string
