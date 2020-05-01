#!/usr/bin/env cwl-runner

baseCommand:
- anvi-script-run-eggnog-mapper
class: CommandLineTool
cwlVersion: v1.0
id: anvi-script-run-eggnog-mapper
inputs:
- doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  id: contigs_db
  inputBinding:
    prefix: --contigs-db
  type: string
- doc: The directory path for your COG setup if you did not use the default directory.
  id: cog_data_dir
  inputBinding:
    prefix: --cog-data-dir
  type: string
- doc: Maximum number of threads to use for multithreading whenever possible. Very
    conservatively, the default is 1. It is a good idea to not exceed the number of
    CPUs / cores on your system. Plus, please be careful with this option if you are
    running your commands on a SGE --if you are clusterizing your runs, and asking
    for multiple threads to use, you may deplete your resources very fast.
  id: num_threads
  inputBinding:
    prefix: --num-threads
  type: string
- doc: When declared, previous annotations in the database will be dropped.
  id: drop_previous_annotations
  inputBinding:
    prefix: --drop-previous-annotations
  type: boolean
- doc: If you have an annotation file from a previous run, you can call this program
    to import the contents of that file into the database instead of a run from scratch.
    In that case, you must also use the `--use- version` parameter to clarify which
    parser version should be used to parse it.
  id: annotation
  inputBinding:
    prefix: --annotation
  type: string
- doc: The version of eggnog-mapper that generated the annotation file.
  id: use_version
  inputBinding:
    prefix: --use-version
  type: string
