version 1.0

task Wtclp {
  input {
    String? overlap_file_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar
    String? long_reads_region
    Boolean? ouput_reads_regions
    Boolean? force_overwrite_output
    Boolean? keep_full_length
    Int? minimum_length_alignment
    Float? minimum_identity_alignment
    Boolean? trun_specical_reservation
    Int? bin_size
    Int? window_size_used
    Int? min_number_solid
    Int? max_turns_iterations
    Boolean? treat_read_path
    Int? debug_chimera_checking
    Boolean? verbose
    String? print_message_special
  }
  command <<<
    wtclp \
      ~{if defined(overlap_file_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar) then ("-i " +  '"' + overlap_file_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar + '"') else ""} \
      ~{if defined(long_reads_region) then ("-b " +  '"' + long_reads_region + '"') else ""} \
      ~{true="-o" false="" ouput_reads_regions} \
      ~{true="-f" false="" force_overwrite_output} \
      ~{true="-F" false="" keep_full_length} \
      ~{if defined(minimum_length_alignment) then ("-s " +  '"' + minimum_length_alignment + '"') else ""} \
      ~{if defined(minimum_identity_alignment) then ("-m " +  '"' + minimum_identity_alignment + '"') else ""} \
      ~{true="-C" false="" trun_specical_reservation} \
      ~{if defined(bin_size) then ("-k " +  '"' + bin_size + '"') else ""} \
      ~{if defined(window_size_used) then ("-w " +  '"' + window_size_used + '"') else ""} \
      ~{if defined(min_number_solid) then ("-d " +  '"' + min_number_solid + '"') else ""} \
      ~{if defined(max_turns_iterations) then ("-n " +  '"' + max_turns_iterations + '"') else ""} \
      ~{true="-T" false="" treat_read_path} \
      ~{if defined(debug_chimera_checking) then ("-x " +  '"' + debug_chimera_checking + '"') else ""} \
      ~{true="-v" false="" verbose} \
      ~{if defined(print_message_special) then ("-8 " +  '"' + print_message_special + '"') else ""}
  >>>
  parameter_meta {
    overlap_file_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar: "Overlap file from wtzmo, +, * Format: reads1\t+/-\tlen1\tbeg1\tend1\treads2\t+/-\tlen2\tbeg2\tend2\tscore\tidentity<float>\tmat\tmis\tins\tdel\tcigar"
    long_reads_region: "Long reads retained region, often from wtobt/wtcyc, + Format: read_name\toffset\tlength\toriginal_len"
    ouput_reads_regions: "Ouput of reads' regions after clipping, -:stdout, * Format: read_name\toffset\tlength"
    force_overwrite_output: "Force overwrite output file"
    keep_full_length: "Keep full length or clip all"
    minimum_length_alignment: "Minimum length of alignment, [1000]"
    minimum_identity_alignment: "Minimum identity of alignment, [0.6]"
    trun_specical_reservation: "Trun off specical reservation for reads contained by others Default: one read (A) will not be trimmed when it is contained by another read (B)."
    bin_size: "Bin size, [50]"
    window_size_used: "Window size used in chimera detection, [1000]"
    min_number_solid: "Min number of solid overlaps in a suspecting region to reject chimeric, [3]"
    max_turns_iterations: "Max turns of iterations, [5]"
    treat_read_path: "Treat read as a path of many blocks broken by possible chimeric sites, and test whether the path is valid will disable iteration, connection checking"
    debug_chimera_checking: "For debug. 1: chimera checking; 2: conntection checking; 4: clip high error ending [7]"
    verbose: "Verbose"
    print_message_special: "Print message for special read"
  }
}