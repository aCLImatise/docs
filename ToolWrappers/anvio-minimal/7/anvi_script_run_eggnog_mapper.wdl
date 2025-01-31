version 1.0

task Anviscriptruneggnogmapper {
  input {
    String? contigs_db
    File? cog_data_dir
    Int? num_threads
    Boolean? drop_previous_annotations
    File? annotation
    File? use_version
  }
  command <<<
    anvi_script_run_eggnog_mapper \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(cog_data_dir) then ("--cog-data-dir " +  '"' + cog_data_dir + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if (drop_previous_annotations) then "--drop-previous-annotations" else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(use_version) then ("--use-version " +  '"' + use_version + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen-\\ncontigs-database' (default: None)"
    cog_data_dir: "The directory path for your COG setup if you did not\\nuse the default directory. (default: None)"
    num_threads: "Maximum number of threads to use for multithreading\\nwhenever possible. Very conservatively, the default is\\n1. It is a good idea to not exceed the number of CPUs\\n/ cores on your system. Plus, please be careful with\\nthis option if you are running your commands on a SGE\\n--if you are clusterizing your runs, and asking for\\nmultiple threads to use, you may deplete your\\nresources very fast. (default: None)"
    drop_previous_annotations: "When declared, previous annotations in the database\\nwill be dropped. (default: False)"
    annotation: "If you have an annotation file from a previous run,\\nyou can call this program to import the contents of\\nthat file into the database instead of a run from\\nscratch. In that case, you must also use the `--use-\\nversion` parameter to clarify which parser version\\nshould be used to parse it. (default: None)"
    use_version: "The version of eggnog-mapper that generated the\\nannotation file. (default: 0.12.6)"
  }
  output {
    File out_stdout = stdout()
  }
}