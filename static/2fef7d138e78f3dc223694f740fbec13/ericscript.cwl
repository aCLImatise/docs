class: CommandLineTool
id: ericscript.pl.cwl
inputs:
- id: db_folder
  doc: where database is stored. Default is ERICSCRIPT_FOLDER/lib/
  type: string
  inputBinding:
    prefix: --dbfolder
- id: refid
  doc: Genome reference identification. Run ericscript.pl --printdb to see available
    refid [homo_sapiens].
  type: boolean
  inputBinding:
    prefix: --refid
- id: print_db
  doc: Print a list of available genomes and exit.
  type: boolean
  inputBinding:
    prefix: --printdb
- id: ens_version
  doc: Download data of a specific Ensembl version (>= 70). Default is the latest
    one.
  type: boolean
  inputBinding:
    prefix: --ensversion
- id: output_folder
  doc: where synthetic datasets will be stored [HOME/ericscript_simulator]
  type: string
  inputBinding:
    prefix: --outputfolder
- id: read_length
  doc: length of synthetic reads [75]
  type: long
  inputBinding:
    prefix: --readlength
- id: refid
  doc: Genome reference identification. Run ericscript.pl --printdb to see available
    refid [homo_sapiens].
  type: boolean
  inputBinding:
    prefix: --refid
- id: verbose
  doc: use verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_size
  doc: parameter of wgsym. Outer distance between the two ends [200]
  type: boolean
  inputBinding:
    prefix: --insize
- id: sd_in_size
  doc: parameter of wgsym. Standard deviation [50]
  type: boolean
  inputBinding:
    prefix: --sd_insize
- id: n_gene_fusion
  doc: The number of synthetic gene fusions per dataset? [50]
  type: boolean
  inputBinding:
    prefix: --ngenefusion
- id: min_cov
  doc: Minimum coverage to simulate [1]
  type: boolean
  inputBinding:
    prefix: --min_cov
- id: max_cov
  doc: Maximum coverage to simulate [50]
  type: boolean
  inputBinding:
    prefix: --max_cov
- id: n_sims
  doc: The number of synthetic datasets to simulate [10]
  type: boolean
  inputBinding:
    prefix: --nsims
- id: be
  doc: Use --be to generate Broken Exons (BE) data [no]
  type: boolean
  inputBinding:
    prefix: --be
- id: ie
  doc: Use --ie to generate Intact Exons (IE) data [yes]
  type: boolean
  inputBinding:
    prefix: --ie
- id: db_folder
  doc: 'where database is stored. Default is ERICSCRIPT_FOLDER/lib/ '
  type: boolean
  inputBinding:
    prefix: --dbfolder
- id: background_1
  doc: 'Fastq file (forward)  for generating background reads. '
  type: boolean
  inputBinding:
    prefix: --background_1
- id: background_2
  doc: 'Fastq file (reverse) for generating background reads. '
  type: boolean
  inputBinding:
    prefix: --background_2
- id: n_reads_background
  doc: The number of reads to extract from background data [200e3].
  type: boolean
  inputBinding:
    prefix: --nreads_background
- id: output_folder
  doc: where statistics file will be stored [HOME/ericscript_calcstats]
  type: string
  inputBinding:
    prefix: --outputfolder
- id: results_folder
  doc: path to folder containing algorithm results.
  type: string
  inputBinding:
    prefix: --resultsfolder
- id: data_folder
  doc: path to folder containing synthetic data generated by ericscript simulator.
  type: string
  inputBinding:
    prefix: --datafolder
- id: algo_name
  doc: 'name of the algorithm that generated results. '
  type: string
  inputBinding:
    prefix: --algoname
- id: dataset
  doc: 'type of synthetic data to considered for calculating statistics. IE or BE? '
  type: string
  inputBinding:
    prefix: --dataset
- id: read_length
  doc: 'length of synthetic reads '
  type: long
  inputBinding:
    prefix: --readlength
- id: norm_roc
  doc: factor to normalize the score given by the algorithm.
  type: long
  inputBinding:
    prefix: --normroc
- id: man
  doc: print the complete manual of the program.
  type: boolean
  inputBinding:
    prefix: --man
- id: verbose
  doc: use verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: sample_name
  doc: Choose a name for your sample. Default is "MyEric"
  type: boolean
  inputBinding:
    prefix: --samplename
- id: output_folder
  doc: Folder that will contain all the results of the analysis. Default is YOUR_HOME/SAMPLENAME
  type: boolean
  inputBinding:
    prefix: --outputfolder
- id: db_folder
  doc: Folder that contains transcriptome sequences and information of the downloaded
    species. Default is ERICSCRIPT_FOLDER/lib
  type: boolean
  inputBinding:
    prefix: --dbfolder
- id: min_reads
  doc: Minimum reads to consider discordant alignments. Default is 3 reads with minimum
    MAPQ.
  type: boolean
  inputBinding:
    prefix: --minreads
- id: n_trim
  doc: trim PE reads from 1st base to $ntrim. Trimmed reads will be used only for
    the first alignment (identification  of discordant reads). Setting ntrim to values
    lower than orginal read length allows EricScript to  increase its sensitivity,
    especially when the length of reads is 75nt or 100 nt.  Default is no trimming.
    Set ntrim=0 to don't trim reads.
  type: boolean
  inputBinding:
    prefix: -ntrim
- id: n_threads
  doc: Number of threads for the bwa aln process.
  type: boolean
  inputBinding:
    prefix: --nthreads
- id: mapq
  doc: minimum value of mapping quality to consider discordant reads. For MAPQ 0 use
    a negative value. Default is 20.
  type: boolean
  inputBinding:
    prefix: --MAPQ
- id: remove
  doc: remove all temporary files. By default, all temporary files will be kept for  user
    inspection, but this will easily clutter the directory.
  type: boolean
  inputBinding:
    prefix: --remove
- id: check_db
  doc: Check if your database is up-to-date, based on the latest Ensembl release.
  type: boolean
  inputBinding:
    prefix: --checkdb
- id: down_db
  doc: Download, build database. refid parameter need to be specified.
  type: boolean
  inputBinding:
    prefix: --downdb
- id: refid
  doc: Genome reference identification. Run ericscript.pl --printdb to see available
    refid.[homo_sapiens]
  type: boolean
  inputBinding:
    prefix: --refid
- id: ens_version
  doc: Download data of a specific version of Ensembl. Default is downloading the
    latest version of Ensembl. Minimum supported version is 70.
  type: boolean
  inputBinding:
    prefix: --ensversion
- id: print_db
  doc: Print a list of available genomes and exit.
  type: boolean
  inputBinding:
    prefix: --printdb
- id: demo
  doc: Run a demonstration of EricScript on simulated reads.
  type: boolean
  inputBinding:
    prefix: --demo
outputs: []
cwlVersion: v1.1
baseCommand:
- ericscript.pl
