#!/usr/bin/env cwl-runner

baseCommand:
- anvi-run-hmms
class: CommandLineTool
cwlVersion: v1.0
id: anvi-run-hmms
inputs:
- doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  id: contigs_db
  inputBinding:
    prefix: --contigs-db
  type: string
- doc: PROFILE PATH, --hmm-profile-dir HMM PROFILE PATH You can use this parameter
    you can specify a directory path that contain an HMM profile. This way you can
    run HMM profiles that are not included in anvi'o. See the online to find out about
    the specifics of this directory structure .
  id: h
  inputBinding:
    prefix: -H
  type: string
- doc: 'PROFILE NAME, --installed-hmm-profile HMM PROFILE NAME When you run this program
    without any parameter, it runs all 0 HMM profiles installed on your system. If
    you want only a specific one to run, you can select it by using this parameter.
    These are the currently available ones: .'
  id: i
  inputBinding:
    prefix: -I
  type: string
- doc: Also scan tRNAs while you're at it.
  id: also_scan_trnas
  inputBinding:
    prefix: --also-scan-trnas
  type: boolean
- doc: Maximum number of threads to use for multithreading whenever possible. Very
    conservatively, the default is 1. It is a good idea to not exceed the number of
    CPUs / cores on your system. Plus, please be careful with this option if you are
    running your commands on a SGE --if you are clusterizing your runs, and asking
    for multiple threads to use, you may deplete your resources very fast.
  id: num_threads
  inputBinding:
    prefix: --num-threads
  type: string
- doc: Don't bother me with questions or warnings, just do it.
  id: just_do_it
  inputBinding:
    prefix: --just-do-it
  type: boolean
