#!/usr/bin/env cwl-runner

baseCommand:
- anvi-update-structure-database
class: CommandLineTool
cwlVersion: v1.0
id: anvi-update-structure-database
inputs:
- doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  id: contigs_db
  inputBinding:
    prefix: --contigs-db
  type: string
- doc: Anvi'o structure database.
  id: structure_db
  inputBinding:
    prefix: --structure-db
  type: string
- doc: A file with anvi'o gene caller IDs. There should be only one column in the
    file, and each line should correspond to a unique gene caller id (without a column
    header).
  id: genes_of_interest
  inputBinding:
    prefix: --genes-of-interest
  type: File
- doc: Gene caller ids. Multiple of them can be declared separated by a delimiter
    (the default is a comma). In anvi-gen-variability-profile, if you declare nothing
    you will get all genes matching your other filtering criteria. In other programs,
    you may get everything, nothing, or an error. It really depends on the situation.
    Fortunately, mistakes are cheap, so it's worth a try.
  id: gene_caller_ids
  inputBinding:
    prefix: --gene-caller-ids
  type: string
- doc: Modeling and annotating structures requires a lot of moving parts, each which
    have their own outputs. The output of this program is a structure database containing
    the pertinent results of this computation, however a lot of stuff doesn't make
    the cut. By providing a directory for this parameter you will get, in addition
    to the structure database, a directory containing the raw output for everything.
  id: dump_dir
  inputBinding:
    prefix: --dump-dir
  type: string
- doc: Since you are updating an existing DB, modeller params are set in place. You
    can have this program list them by providing this flag
  id: list_modeller_params
  inputBinding:
    prefix: --list-modeller-params
  type: boolean
- doc: Supply if you would like to rerun structural modelling for your genes of interest
    if they are already present in your DB
  id: rerun_genes
  inputBinding:
    prefix: --rerun-genes
  type: boolean
- doc: The MODELLER program to use. For example, `mod9.19`. Anvi'o will try and find
    it if not provided.
  id: modeller_executable
  inputBinding:
    prefix: --modeller-executable
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
    The default is 25 per thread. So a single-threaded job would have a write buffer
    size of 25, whereas a job with 4 threads would have a write buffer size of 4*25.
    The larger the buffer size, the less frequent the program will access to the disk,
    yet the more memory will be consumed since the processed items will be cleared
    off the memory only after they are written to the disk. The default buffer size
    will likely work for most cases. Please keep an eye on the memory usage output
    to make sure the memory use never exceeds the size of the physical memory. If
    --num-threads is 1, this parameter is ignored because the DB is written to after
    each gene
  id: write_buffer_size_per_thread
  inputBinding:
    prefix: --write-buffer-size-per-thread
  type: long
