version 1.0

task AnviProfile {
  input {
    String? input_file
    String? contigs_db
    Boolean? blank_profile
    String? output_dir
    Boolean? overwrite_output_destinations
    String? sample_name
    Boolean? report_variability_full
    Boolean? skip_snv_profiling
    Boolean? profile_s_cvs
    String? description
    Boolean? cluster_contigs
    Boolean? skip_hierarchical_clustering
    String? distance
    String? linkage
    Int? min_contig_length
    Int? max_contig_length
    Int? min_mean_coverage
    Int? min_coverage_for_variability
    Boolean? list_contigs
    File? contigs_of_interest
    String? num_threads
    Int? queue_size
    Int? write_buffer_size_per_thread
    Boolean? force_multi
  }
  command <<<
    anvi-profile \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{true="--blank-profile" false="" blank_profile} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{true="--overwrite-output-destinations" false="" overwrite_output_destinations} \
      ~{if defined(sample_name) then ("--sample-name " +  '"' + sample_name + '"') else ""} \
      ~{true="--report-variability-full" false="" report_variability_full} \
      ~{true="--skip-SNV-profiling" false="" skip_snv_profiling} \
      ~{true="--profile-SCVs" false="" profile_s_cvs} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{true="--cluster-contigs" false="" cluster_contigs} \
      ~{true="--skip-hierarchical-clustering" false="" skip_hierarchical_clustering} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(linkage) then ("--linkage " +  '"' + linkage + '"') else ""} \
      ~{if defined(min_contig_length) then ("--min-contig-length " +  '"' + min_contig_length + '"') else ""} \
      ~{if defined(max_contig_length) then ("--max-contig-length " +  '"' + max_contig_length + '"') else ""} \
      ~{if defined(min_mean_coverage) then ("--min-mean-coverage " +  '"' + min_mean_coverage + '"') else ""} \
      ~{if defined(min_coverage_for_variability) then ("--min-coverage-for-variability " +  '"' + min_coverage_for_variability + '"') else ""} \
      ~{true="--list-contigs" false="" list_contigs} \
      ~{if defined(contigs_of_interest) then ("--contigs-of-interest " +  '"' + contigs_of_interest + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(queue_size) then ("--queue-size " +  '"' + queue_size + '"') else ""} \
      ~{if defined(write_buffer_size_per_thread) then ("--write-buffer-size-per-thread " +  '"' + write_buffer_size_per_thread + '"') else ""} \
      ~{true="--force-multi" false="" force_multi}
  >>>
  parameter_meta {
    input_file: "Sorted and indexed BAM file to analyze. Takes a long time depending on the length of the file and parameters used for profiling."
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen- contigs'"
    blank_profile: "If you only have contig sequences, but no mapping data (i.e., you found a genome and would like to take a look from it), this flag will become very hand. After creating a contigs database for your contigs, you can create a blank anvi'o profile database to use anvi'o interactive interface with that contigs database without any mapping data."
    output_dir: "Directory path for output files"
    overwrite_output_destinations: "Overwrite if the output files and/or directories exist."
    sample_name: "It is important to set a sample name (using only ASCII letters and digits and without spaces) that is unique (considering all others). If you do not provide one, anvi'o will try to make up one for you based on other information, although, you should never let the software to decide these things)."
    report_variability_full: "One of the things anvi-profile does is to store information about variable nucleotide positions. Usually it does not report every variable position, since not every variable position is genuine variation. Say, if you have 1,000 coverage, and all nucleotides at that position are Ts and only one of them is a C, the confidence of that C being a real variation is quite low. anvi'o has a simple algorithm in place to reduce the impact of noise. However, using this flag you can disable it and ask profiler to report every single variation (which may result in very large output files and millions of reports, but you are the boss). Do not forget to take a look at '-- min-coverage-for-variability' parameter"
    skip_snv_profiling: "By default, anvi'o characterizes single-nucleotide variation in each sample. The use of this flag will instruct profiler to skip that step. Please remember that parameters and flags must be identical between different profiles using the same contigs database for them to merge properly."
    profile_s_cvs: "Anvi'o can perform accurate characterization of codon frequencies in genes during profiling. While having codon frequencies opens doors to powerful evolutionary insights in downstream analyses, due to its computational complexity, this feature comes 'off' by default. Using this flag you can rise against the authority, as you always should, and make anvi'o profile codons."
    description: "A plain text file that contains some description about the project. You can use Markdwon syntax. The description text will be rendered and shown in all relevant interfaces, including the anvi'o interactive interface, or anvi'o summary outputs."
    cluster_contigs: "Single profiles are rarely used for genome binning or visualization, and since clustering step increases the profiling runtime for no good reason, the default behavior is to not cluster contigs for individual runs. However, if you are planning to do binning on one sample, you must use this flag to tell anvi'o to run cluster configurations for single runs on your sample."
    skip_hierarchical_clustering: "If you are not planning to use the interactive interface (or if you have other means to add a tree of contigs in the database) you may skip the step where hierarchical clustering of your items are preformed based on default clustering recipes matching to your database type."
    distance: "The distance metric for the hierarchical clustering. Only relevant if you are using `--cluster-contigs` flag. The default is \"euclidean\"."
    linkage: "The linkage method for the hierarchical clustering. Just like the distance metric this is only relevant if you are using it with `--cluster-contigs` flag. The default is \"ward\"."
    min_contig_length: "Minimum length of contigs in a BAM file to analyze. The minimum length should be long enough for tetra- nucleotide frequency analysis to be meaningful. There is no way to define a golden number of minimum length that would be applicable to genomes found in all environments, but we chose the default to be 1000, and have been happy with it. You are welcome to experiment, but we advise to never go below 1,000. You also should remember that the lower you go, the more time it will take to analyze all contigs. You can use --list-contigs parameter to have an idea how many contigs would be discarded for a given M."
    max_contig_length: "Just like the minimum contig length parameter, but to set a maximum. Basically this will remove any contig longer than a certain value. Why would anyone need this? Who knows. But if you ever do, it is here."
    min_mean_coverage: "Minimum mean coverage for contigs to be kept in the analysis. The default value is 0, which is for your best interest if you are going to profile multiple BAM files which are then going to be merged for a cross- sectional or time series analysis. Do not change it if you are not sure this is what you want to do."
    min_coverage_for_variability: "Minimum coverage of a nucleotide position to be subjected to SNV profiling. By default, anvi'o will not attempt to make sense of variation in a given nucleotide position if it is covered less than 10X. You can change that minimum using this parameter."
    list_contigs: "When declared, the program will list contigs in the BAM file and exit gracefully without any further analysis."
    contigs_of_interest: "It is possible to analyze only a group of contigs from a given BAM file. If you provide a text file, in which every contig of interest is listed line by line, the profiler would engine only on those contigs in the BAM file and ignore the rest. This can be used for debugging purposes, or to engine on a particular group of contigs that were identified as relevant during the interactive analysis."
    num_threads: "Maximum number of threads to use for multithreading whenever possible. Very conservatively, the default is 1. It is a good idea to not exceed the number of CPUs / cores on your system. Plus, please be careful with this option if you are running your commands on a SGE --if you are clusterizing your runs, and asking for multiple threads to use, you may deplete your resources very fast."
    queue_size: "The queue size for worker threads to store data to communicate to the main thread. The default is set by the class based on the number of threads. If you have *any* hesitation about whether you know what you are doing, you should not change this value."
    write_buffer_size_per_thread: "How many items should be kept in memory before they are written do the disk. The default is 500 per thread. So a single-threaded job would have a write buffer size of 500, whereas a job with 4 threads would have a write buffer size of 4*500. The larger the buffer size, the less frequent the program will access to the disk, yet the more memory will be consumed since the processed items will be cleared off the memory only after they are written to the disk. The default buffer size will likely work for most cases. Please keep an eye on the memory usage output to make sure the memory use never exceeds the size of the physical memory."
    force_multi: "This is not useful to non-developers. It forces the multi-process routine even when 1 thread is chosen."
  }
}