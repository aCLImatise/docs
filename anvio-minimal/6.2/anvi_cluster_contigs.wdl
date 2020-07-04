version 1.0

task AnviClusterContigs {
  input {
    String? profile_db
    String? contigs_db
    String? collection_name
    String? driver
    String? num_threads
    Boolean? just_do_it
  }
  command <<<
    anvi-cluster-contigs \
      ~{if defined(profile_db) then ("--profile-db " +  '"' + profile_db + '"') else ""} \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(driver) then ("--driver " +  '"' + driver + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{true="--just-do-it" false="" just_do_it}
  >>>
  parameter_meta {
    profile_db: "Anvi'o profile database"
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen- contigs'"
    collection_name: "Collection name."
    driver: "Automatic binning drivers. Available options 'concoct, metabat2, maxbin2, dastool, binsanity'."
    num_threads: "Maximum number of threads to use for multithreading whenever possible. Very conservatively, the default is 1. It is a good idea to not exceed the number of CPUs / cores on your system. Plus, please be careful with this option if you are running your commands on a SGE --if you are clusterizing your runs, and asking for multiple threads to use, you may deplete your resources very fast."
    just_do_it: "Don't bother me with questions or warnings, just do it."
  }
}