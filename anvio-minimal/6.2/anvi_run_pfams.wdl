version 1.0

task AnviRunPfams {
  input {
    String? contigs_db
    String? pfam_data_dir
    String? num_threads
  }
  command <<<
    anvi-run-pfams \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(pfam_data_dir) then ("--pfam-data-dir " +  '"' + pfam_data_dir + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""}
  >>>
  parameter_meta {
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen- contigs'"
    pfam_data_dir: "The directory path for your Pfam setup. Anvi'o will try to use the default path if you do not specify anything."
    num_threads: "Maximum number of threads to use for multithreading whenever possible. Very conservatively, the default is 1. It is a good idea to not exceed the number of CPUs / cores on your system. Plus, please be careful with this option if you are running your commands on a SGE --if you are clusterizing your runs, and asking for multiple threads to use, you may deplete your resources very fast."
  }
}