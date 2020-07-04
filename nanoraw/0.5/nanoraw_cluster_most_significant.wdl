version 1.0

task NanorawClusterMostSignificant {
  input {
    Array[String] base_call_subgroups
    Boolean? two_d
    Array[String] fast_five_based_irs
    Array[String] fast_five_based_irs_two
    String? corrected_group
    Array[String] obs_per_base_filter
    String? test_type
    String? fishers_method_offset
    Int? minimum_test_reads
    String? genome_fast_a
    String? processes
    String? pdf_filename
    String? statistics_filename
    String? r_data_filename
    String? num_regions
    String? q_value_threshold
    String? num_bases
    String? slide_span
    Boolean? quiet
  }
  command <<<
    nanoraw cluster_most_significant \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--2d" false="" two_d} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(fast_five_based_irs_two) then ("--fast5-basedirs2 " +  '"' + fast_five_based_irs_two + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(obs_per_base_filter) then ("--obs-per-base-filter " +  '"' + obs_per_base_filter + '"') else ""} \
      ~{if defined(test_type) then ("--test-type " +  '"' + test_type + '"') else ""} \
      ~{if defined(fishers_method_offset) then ("--fishers-method-offset " +  '"' + fishers_method_offset + '"') else ""} \
      ~{if defined(minimum_test_reads) then ("--minimum-test-reads " +  '"' + minimum_test_reads + '"') else ""} \
      ~{if defined(genome_fast_a) then ("--genome-fasta " +  '"' + genome_fast_a + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(statistics_filename) then ("--statistics-filename " +  '"' + statistics_filename + '"') else ""} \
      ~{if defined(r_data_filename) then ("--r-data-filename " +  '"' + r_data_filename + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(q_value_threshold) then ("--q-value-threshold " +  '"' + q_value_threshold + '"') else ""} \
      ~{if defined(num_bases) then ("--num-bases " +  '"' + num_bases + '"') else ""} \
      ~{if defined(slide_span) then ("--slide-span " +  '"' + slide_span + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    base_call_subgroups: "FAST5 subgroup (under Analyses/[corrected-group]) where individual template and/or complement reads are stored. Default: ['BaseCalled_template']"
    two_d: "Input contains 2D reads. Equivalent to `--basecall- subgroups BaseCalled_template BaseCalled_complement`"
    fast_five_based_irs: "Directories containing fast5 files."
    fast_five_based_irs_two: "Second set of directories containing fast5 files to compare."
    corrected_group: "FAST5 group to access/plot created by genome_resquiggle script. Default: RawGenomeCorrected_000"
    obs_per_base_filter: "Filter reads for plotting baseed on threshold of percentiles of the number of observations assigned to a base (default no filter). Format thresholds as \"percentile:thresh [pctl2:thresh2 ...]\" E.g. reads with 99th pctl <200 obs and max <5k obs would be \"99:200 100:5000\"."
    test_type: "Type of significance test to apply. Choices are: mw_utest (default; mann-whitney u-test), ttest."
    fishers_method_offset: "Offset up and downstream over which to compute combined p-values using Fisher's method. Default: 2."
    minimum_test_reads: "Number of reads required from both samples to test for significant difference in signal level. Default: 5"
    genome_fast_a: "FASTA file used to map reads with \"genome_resquiggle\" command."
    processes: "Number of processes. Default: 1"
    pdf_filename: "PDF filename to store plot(s). Default: Nanopore_most_significant_clustering.pdf"
    statistics_filename: "Filename to save/load base by base signal difference statistics. If file exists it will try to be loaded, if it does not exist it will be created to save statistics. Default: Don't save/load."
    r_data_filename: "Filename to save R data structure. Defualt: Don't save"
    num_regions: "Number of regions to plot. Default: 10"
    q_value_threshold: "Choose the number of regions to select by the FDR corrected p-values. Note that --num-regions will be ignored if this option is set."
    num_bases: "Number of bases to plot from region. Default: 5"
    slide_span: "Number of bases to slide up and down when computing distances for signal cluster plotting. Default: Exact position"
    quiet: "Don't print status information."
  }
}