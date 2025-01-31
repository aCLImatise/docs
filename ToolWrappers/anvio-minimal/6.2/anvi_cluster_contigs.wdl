version 1.0

task Anviclustercontigs {
  input {
    String? profile_db
    String? contigs_db
    String? collection_name
    Int? driver
    Int? num_threads
    Boolean? just_do_it
    String it_dot
  }
  command <<<
    anvi_cluster_contigs \
      ~{it_dot} \
      ~{if defined(profile_db) then ("--profile-db " +  '"' + profile_db + '"') else ""} \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(driver) then ("--driver " +  '"' + driver + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    profile_db: "Anvi'o profile database"
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen-\\ncontigs'"
    collection_name: "Collection name."
    driver: "Automatic binning drivers. Available options 'concoct,\\nmetabat2, maxbin2, dastool, binsanity'."
    num_threads: "Maximum number of threads to use for multithreading\\nwhenever possible. Very conservatively, the default is\\n1. It is a good idea to not exceed the number of CPUs\\n/ cores on your system. Plus, please be careful with\\nthis option if you are running your commands on a SGE\\n--if you are clusterizing your runs, and asking for\\nmultiple threads to use, you may deplete your\\nresources very fast."
    just_do_it: "Don't bother me with questions or warnings, just do"
    it_dot: "CONCOCT [NOT FOUND]"
  }
  output {
    File out_stdout = stdout()
  }
}