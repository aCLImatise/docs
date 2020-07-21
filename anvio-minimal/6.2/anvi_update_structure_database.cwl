class: CommandLineTool
id: ../../../anvi_update_structure_database.cwl
inputs:
- id: contigs_db
  doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  type: string
  inputBinding:
    prefix: --contigs-db
- id: structure_db
  doc: Anvi'o structure database.
  type: string
  inputBinding:
    prefix: --structure-db
- id: genes_of_interest
  doc: A file with anvi'o gene caller IDs. There should be only one column in the
    file, and each line should correspond to a unique gene caller id (without a column
    header).
  type: File
  inputBinding:
    prefix: --genes-of-interest
- id: gene_caller_ids
  doc: Gene caller ids. Multiple of them can be declared separated by a delimiter
    (the default is a comma). In anvi-gen-variability-profile, if you declare nothing
    you will get all genes matching your other filtering criteria. In other programs,
    you may get everything, nothing, or an error. It really depends on the situation.
    Fortunately, mistakes are cheap, so it's worth a try.
  type: string
  inputBinding:
    prefix: --gene-caller-ids
- id: dump_dir
  doc: Modeling and annotating structures requires a lot of moving parts, each which
    have their own outputs. The output of this program is a structure database containing
    the pertinent results of this computation, however a lot of stuff doesn't make
    the cut. By providing a directory for this parameter you will get, in addition
    to the structure database, a directory containing the raw output for everything.
  type: string
  inputBinding:
    prefix: --dump-dir
- id: list_modeller_params
  doc: Since you are updating an existing DB, modeller params are set in place. You
    can have this program list them by providing this flag
  type: boolean
  inputBinding:
    prefix: --list-modeller-params
- id: rerun_genes
  doc: Supply if you would like to rerun structural modelling for your genes of interest
    if they are already present in your DB
  type: boolean
  inputBinding:
    prefix: --rerun-genes
- id: modeller_executable
  doc: The MODELLER program to use. For example, `mod9.19`. Anvi'o will try and find
    it if not provided.
  type: string
  inputBinding:
    prefix: --modeller-executable
- id: num_threads
  doc: Maximum number of threads to use for multithreading whenever possible. Very
    conservatively, the default is 1. It is a good idea to not exceed the number of
    CPUs / cores on your system. Plus, please be careful with this option if you are
    running your commands on a SGE --if you are clusterizing your runs, and asking
    for multiple threads to use, you may deplete your resources very fast.
  type: string
  inputBinding:
    prefix: --num-threads
- id: write_buffer_size_per_thread
  doc: How many items should be kept in memory before they are written do the disk.
    The default is 25 per thread. So a single-threaded job would have a write buffer
    size of 25, whereas a job with 4 threads would have a write buffer size of 4*25.
    The larger the buffer size, the less frequent the program will access to the disk,
    yet the more memory will be consumed since the processed items will be cleared
    off the memory only after they are written to the disk. The default buffer size
    will likely work for most cases. Please keep an eye on the memory usage output
    to make sure the memory use never exceeds the size of the physical memory. If
    --num-threads is 1, this parameter is ignored because the DB is written to after
    each gene
  type: long
  inputBinding:
    prefix: --write-buffer-size-per-thread
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-update-structure-database
