#!/usr/bin/env cwl-runner

baseCommand:
- anvi-run-scg-taxonomy
class: CommandLineTool
cwlVersion: v1.0
id: anvi-run-scg-taxonomy
inputs:
- doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  id: contigs_db
  inputBinding:
    prefix: --contigs-db
  type: string
- doc: The directory for SCGs data to be stored (or read from, depending on the context).
    If you leave it as is without specifying anything, anvi'o will set up everything
    in (or try to read things from) a pre- defined default directory. The advantage
    of using the default directory at the time of set up is that every user of anvi'o
    on a computer system will be using a single data directory, but then you may need
    to run the setup program with superuser privileges. If you don't have superuser
    privileges, then you can use this parameter to tell anvi'o the location you wish
    to use to setup your databases. If you are using a program (such as `anvi-run-scg-taxonomy`
    or `anvi-estimate- scg-taxonomy`) you will have to use this parameter to tell
    those programs where your data are.
  id: scgs_taxonomy_data_dir
  inputBinding:
    prefix: --scgs-taxonomy-data-dir
  type: File
- doc: The defualt value for this is 90.0%, and in an ideal world you sholdn't really
    change it. Lowering this value will probably give you too many hits from neighboring
    genomes, which may ruin your consensus taxonomy (imagine, at 90% identity you
    may match to a single species, but at 70% identity you may match to every species
    in a genus and your consensus assignment may be influenced by that). But once
    in a while you will have a genome that doesn't have any close match in GTDB, and
    you will be curious to find out what it could be. So, when you are getting no
    SCG hits whatsoever, only then you may want to play with this value. In those
    cases you can run anvi-estimate-scg- taxonomy with a `--debug` flag to see what
    is really going on. We strongly advice you to do this only with single genomes,
    and never with metagenomes.
  id: min_percent_identity
  inputBinding:
    prefix: --min-percent-identity
  type: string
- doc: Maximum number of processes to run in parallel. Please note that this is different
    than number of threads. If you ask for 4 parallel processes, and 5 threads, anvi'o
    will run four processes in parallel and assign 5 threads to each. For resource
    allocation you must multiply the number of processes and threads.
  id: num_parallel_processes
  inputBinding:
    prefix: --num-parallel-processes
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
- doc: How many items should be kept in memory before they are written do the disk.
    The default is 500. The larger the buffer size, the less frequent the program
    will access to the disk, yet the more memory will be consumed since the processed
    items will be cleared off the memory only after they are written to the disk.
    The default buffer size will likely work for most cases, but if you feel you need
    to reduce it, we trust you. Please keep an eye on the memory usage output to make
    sure the memory use never exceeds the size of the physical memory.
  id: write_buffer_size
  inputBinding:
    prefix: --write-buffer-size
  type: long
