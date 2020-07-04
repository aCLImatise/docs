version 1.0

task AnviRunHmms {
  input {
    String? contigs_db
    String? profile_path_
    String? profile_name_
    Boolean? also_scan_trnas
    String? num_threads
    Boolean? just_do_it
    String? profile
    File? path
  }
  command <<<
    anvi-run-hmms \
      ~{profile} \
      ~{path} \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(profile_path_) then ("-H " +  '"' + profile_path_ + '"') else ""} \
      ~{if defined(profile_name_) then ("-I " +  '"' + profile_name_ + '"') else ""} \
      ~{true="--also-scan-trnas" false="" also_scan_trnas} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{true="--just-do-it" false="" just_do_it}
  >>>
  parameter_meta {
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen- contigs'"
    profile_path_: "PROFILE PATH, --hmm-profile-dir HMM PROFILE PATH You can use this parameter you can specify a directory path that contain an HMM profile. This way you can run HMM profiles that are not included in anvi'o. See the online to find out about the specifics of this directory structure ."
    profile_name_: "PROFILE NAME, --installed-hmm-profile HMM PROFILE NAME When you run this program without any parameter, it runs all 0 HMM profiles installed on your system. If you want only a specific one to run, you can select it by using this parameter. These are the currently available ones: ."
    also_scan_trnas: "Also scan tRNAs while you're at it."
    num_threads: "Maximum number of threads to use for multithreading whenever possible. Very conservatively, the default is 1. It is a good idea to not exceed the number of CPUs / cores on your system. Plus, please be careful with this option if you are running your commands on a SGE --if you are clusterizing your runs, and asking for multiple threads to use, you may deplete your resources very fast."
    just_do_it: "Don't bother me with questions or warnings, just do it."
    profile: ""
    path: ""
  }
}