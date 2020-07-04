version 1.0

task RunInteMAP.py {
  input {
    String? outfile
    String? thread_num
    String? quality_start
    Int? min_high_cov_length
    String? k_for_abyss
    Int? min_k_for_i_dba
    String? high_cov_i_dba
    String? low_cov_i_dba
    String? high_cov_abyss
    Boolean? clearance
    String sequence_position_file
    String lib_info_file
  }
  command <<<
    runInteMAP.py \
      ~{sequence_position_file} \
      ~{lib_info_file} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(thread_num) then ("--thread_num " +  '"' + thread_num + '"') else ""} \
      ~{if defined(quality_start) then ("--quality_start " +  '"' + quality_start + '"') else ""} \
      ~{if defined(min_high_cov_length) then ("--minHighCovLength " +  '"' + min_high_cov_length + '"') else ""} \
      ~{if defined(k_for_abyss) then ("--k_for_abyss " +  '"' + k_for_abyss + '"') else ""} \
      ~{if defined(min_k_for_i_dba) then ("--min_k_for_idba " +  '"' + min_k_for_i_dba + '"') else ""} \
      ~{if defined(high_cov_i_dba) then ("--high_cov_idba " +  '"' + high_cov_i_dba + '"') else ""} \
      ~{if defined(low_cov_i_dba) then ("--low_cov_idba " +  '"' + low_cov_i_dba + '"') else ""} \
      ~{if defined(high_cov_abyss) then ("--high_cov_abyss " +  '"' + high_cov_abyss + '"') else ""} \
      ~{true="--clearance" false="" clearance}
  >>>
  parameter_meta {
    outfile: "Output contig file"
    thread_num: "number of threads, default=2"
    quality_start: "Quality value ascii start, default=33"
    min_high_cov_length: "the high coverage length threashold, above which InteMAP will deem that high-coverage species exist in the community, and run IDBA-UD and ABySS on the corrected read set, default=1000000"
    k_for_abyss: "kmer size for ABySS, default=61"
    min_k_for_i_dba: "minimal kmer size for IDBA_UD, default=23"
    high_cov_i_dba: "lower bound for IDBA-contigs of high coverage, default=30"
    low_cov_i_dba: "higher bound for IDBA-contigs of low coverage, default=50"
    high_cov_abyss: "lower bound for ABySS-contigs of high coverage, default=20"
    clearance: "make clearance of intermediate output files, default=False"
    sequence_position_file: "keeps the directories of sequencing reads in the fastq formats"
    lib_info_file: "keeps the information of the library for sequencing reads"
  }
}