version 1.0

task SOAPdenovo127merAll {
  input {
    File? config_file_solexa
    File? outputgraph_prefix_output
    Int? kmermin_max_size
    Int? ncpu_number_cpu
    Int? initmemoryassumption_memory_assumption
    Int? kmerfreqcutoff_kmers_larger
    Boolean? optional_resolve_repeats
    Int? edgecovcutoff_edges_larger
    Int? mergelevelmin_max_strength
    Int? arcweight_two_edges
    Int? maxkmer_max_size
    Boolean? optional_merge_bubble
    Int? max_kmer_size
    Boolean? optional_fill_gaps
    Boolean? optional_unmask_contigs
    Boolean? optional_keep_contigs
    Int? gaplendiff_allowed_difference
    Int? shortest_contig_scaffolding
    Float? mincontigcvg_minimum_contig
    Float? maxcontigcvg_maximum_contig
    Float? insertsizeupperbound_bavgins_used
    Float? bubblecoverage_remove_contig
    Int? genomesize_genome_size
    Boolean? optional_output_information
    Int soapdenovo_s_configfile
  }
  command <<<
    SOAPdenovo_127mer all \
      ~{soapdenovo_s_configfile} \
      ~{if defined(config_file_solexa) then ("-s " +  '"' + config_file_solexa + '"') else ""} \
      ~{if defined(outputgraph_prefix_output) then ("-o " +  '"' + outputgraph_prefix_output + '"') else ""} \
      ~{if defined(kmermin_max_size) then ("-K " +  '"' + kmermin_max_size + '"') else ""} \
      ~{if defined(ncpu_number_cpu) then ("-p " +  '"' + ncpu_number_cpu + '"') else ""} \
      ~{if defined(initmemoryassumption_memory_assumption) then ("-a " +  '"' + initmemoryassumption_memory_assumption + '"') else ""} \
      ~{if defined(kmerfreqcutoff_kmers_larger) then ("-d " +  '"' + kmerfreqcutoff_kmers_larger + '"') else ""} \
      ~{if (optional_resolve_repeats) then "-R" else ""} \
      ~{if defined(edgecovcutoff_edges_larger) then ("-D " +  '"' + edgecovcutoff_edges_larger + '"') else ""} \
      ~{if defined(mergelevelmin_max_strength) then ("-M " +  '"' + mergelevelmin_max_strength + '"') else ""} \
      ~{if defined(arcweight_two_edges) then ("-e " +  '"' + arcweight_two_edges + '"') else ""} \
      ~{if defined(maxkmer_max_size) then ("-m " +  '"' + maxkmer_max_size + '"') else ""} \
      ~{if (optional_merge_bubble) then "-E" else ""} \
      ~{if defined(max_kmer_size) then ("-k " +  '"' + max_kmer_size + '"') else ""} \
      ~{if (optional_fill_gaps) then "-F" else ""} \
      ~{if (optional_unmask_contigs) then "-u" else ""} \
      ~{if (optional_keep_contigs) then "-w" else ""} \
      ~{if defined(gaplendiff_allowed_difference) then ("-G " +  '"' + gaplendiff_allowed_difference + '"') else ""} \
      ~{if defined(shortest_contig_scaffolding) then ("-L " +  '"' + shortest_contig_scaffolding + '"') else ""} \
      ~{if defined(mincontigcvg_minimum_contig) then ("-c " +  '"' + mincontigcvg_minimum_contig + '"') else ""} \
      ~{if defined(maxcontigcvg_maximum_contig) then ("-C " +  '"' + maxcontigcvg_maximum_contig + '"') else ""} \
      ~{if defined(insertsizeupperbound_bavgins_used) then ("-b " +  '"' + insertsizeupperbound_bavgins_used + '"') else ""} \
      ~{if defined(bubblecoverage_remove_contig) then ("-B " +  '"' + bubblecoverage_remove_contig + '"') else ""} \
      ~{if defined(genomesize_genome_size) then ("-N " +  '"' + genomesize_genome_size + '"') else ""} \
      ~{if (optional_output_information) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config_file_solexa: "configFile: the config file of solexa reads"
    outputgraph_prefix_output: "outputGraph: prefix of output graph file name"
    kmermin_max_size: "kmer(min 13, max 127): kmer size, [23]"
    ncpu_number_cpu: "n_cpu: number of cpu for use, [8]"
    initmemoryassumption_memory_assumption: "initMemoryAssumption: memory assumption initialized to avoid further reallocation, unit G, [0]"
    kmerfreqcutoff_kmers_larger: "kmerFreqCutoff: kmers with frequency no larger than KmerFreqCutoff will be deleted, [0]"
    optional_resolve_repeats: "(optional)  resolve repeats by reads, [NO]"
    edgecovcutoff_edges_larger: "edgeCovCutoff: edges with coverage no larger than EdgeCovCutoff will be deleted, [1]"
    mergelevelmin_max_strength: "mergeLevel(min 0, max 3): the strength of merging similar sequences during contiging, [1]"
    arcweight_two_edges: "arcWeight: two edges, between which the arc's weight is larger than arcWeight, will be linerized, [0]"
    maxkmer_max_size: "maxKmer (max 127): maximum kmer size used for multi-kmer, [NO]"
    optional_merge_bubble: "(optional)  merge clean bubble before iterate, works only if -M is set when using multi-kmer, [NO]"
    max_kmer_size: "kmer_R2C(min 13, max 127): kmer size used for mapping reads to contigs, [K]"
    optional_fill_gaps: "(optional)  fill gaps in scaffolds, [NO]"
    optional_unmask_contigs: "(optional)  un-mask contigs with high/low coverage before scaffolding, [mask]"
    optional_keep_contigs: "(optional)  keep contigs weakly connected to other contigs in scaffold, [NO]"
    gaplendiff_allowed_difference: "gapLenDiff: allowed length difference between estimated and filled gap, [50]"
    shortest_contig_scaffolding: "minContigLen: shortest contig for scaffolding, [K+2]"
    mincontigcvg_minimum_contig: "minContigCvg: minimum contig coverage (c*avgCvg), contigs shorter than 100bp with coverage smaller than c*avgCvg will be masked before scaffolding unless -u is set, [0.1]"
    maxcontigcvg_maximum_contig: "maxContigCvg: maximum contig coverage (C*avgCvg), contigs with coverage larger than C*avgCvg or contigs shorter than 100bp with coverage larger than 0.8*C*avgCvg will be masked before scaffolding unless -u is set, [2]"
    insertsizeupperbound_bavgins_used: "insertSizeUpperBound: (b*avg_ins) will be used as upper bound of insert size for large insert size ( > 1000) when handling pair-end connections between contigs if b is set to larger than 1, [1.5]"
    bubblecoverage_remove_contig: "bubbleCoverage: remove contig with lower cvoerage in bubble structure if both contigs' coverage are smaller than bubbleCoverage*avgCvg, [0.6]"
    genomesize_genome_size: "genomeSize: genome size for statistics, [0]"
    optional_output_information: "(optional)  output information for Hawkeye to visualize the assembly, [NO]"
    soapdenovo_s_configfile: "SOAPdenovo all -s configFile -o outputGraph [-R -F -u -w] [-K kmer -p n_cpu -a initMemoryAssumption -d KmerFreqCutOff -D EdgeCovCutoff -M mergeLevel -k kmer_R2C, -G gapLenDiff -L minContigLen -c minContigCvg -C maxContigCvg -b insertSizeUpperBound -B bubbleCoverage -N genomeSize]"
  }
  output {
    File out_stdout = stdout()
    File out_outputgraph_prefix_output = "${in_outputgraph_prefix_output}"
  }
}