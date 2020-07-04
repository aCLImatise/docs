version 1.0

task AnviRunNcbiCogs {
  input {
    String? contigs_db
    String? cog_data_dir
    String? num_threads
    Boolean? sensitive
    File? temporary_dir_path
    String? search_with
  }
  command <<<
    anvi-run-ncbi-cogs \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(cog_data_dir) then ("--cog-data-dir " +  '"' + cog_data_dir + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{true="--sensitive" false="" sensitive} \
      ~{if defined(temporary_dir_path) then ("--temporary-dir-path " +  '"' + temporary_dir_path + '"') else ""} \
      ~{if defined(search_with) then ("--search-with " +  '"' + search_with + '"') else ""}
  >>>
  parameter_meta {
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen- contigs'"
    cog_data_dir: "The directory path for your COG setup. Anvi'o will try to use the default path if you do not specify anything."
    num_threads: "Maximum number of threads to use for multithreading whenever possible. Very conservatively, the default is 1. It is a good idea to not exceed the number of CPUs / cores on your system. Plus, please be careful with this option if you are running your commands on a SGE --if you are clusterizing your runs, and asking for multiple threads to use, you may deplete your resources very fast."
    sensitive: "DIAMOND sensitivity. With this flag you can instruct DIAMOND to be 'sensitive', rather than 'fast' during the search. It is likely the search will take remarkably longer. But, hey, if you are doing it for your final analysis, maybe it should take longer and be more accurate. This flag is only relevant if you are running DIAMOND."
    temporary_dir_path: "If you don't provide anything here, this program will come up with a temporary directory path by itself to store intermediate files, and clean it later. If you want to have full control over this, you can use this flag to define one.."
    search_with: "What program to use for database searching. The default search uses blastp. All available options include: blastp."
  }
}