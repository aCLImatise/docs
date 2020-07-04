version 1.0

task Filter.pl {
  input {
    String? column_filter_applied
    String? number_columns_headers
    String? min
    String? mins
    String? min_l
    String? max
    String? maxs
    String? max_l
    String? abs
    String? babs
    String? str
    String? est_r
    String? est_r_list
    String? nstr
    Boolean? ne
    Boolean? e
    String? min_pass
    String? rel_min_pass
    Boolean? numeric
    Boolean? pass_from
    String? use_column_num
    Boolean? print_num
    String? sk
    String? skip
    Boolean? quite_mode_default
  }
  command <<<
    filter.pl \
      ~{if defined(column_filter_applied) then ("-c " +  '"' + column_filter_applied + '"') else ""} \
      ~{if defined(number_columns_headers) then ("-h " +  '"' + number_columns_headers + '"') else ""} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(mins) then ("-mins " +  '"' + mins + '"') else ""} \
      ~{if defined(min_l) then ("-minl " +  '"' + min_l + '"') else ""} \
      ~{if defined(max) then ("-max " +  '"' + max + '"') else ""} \
      ~{if defined(maxs) then ("-maxs " +  '"' + maxs + '"') else ""} \
      ~{if defined(max_l) then ("-maxl " +  '"' + max_l + '"') else ""} \
      ~{if defined(abs) then ("-abs " +  '"' + abs + '"') else ""} \
      ~{if defined(babs) then ("-babs " +  '"' + babs + '"') else ""} \
      ~{if defined(str) then ("-str " +  '"' + str + '"') else ""} \
      ~{if defined(est_r) then ("-estr " +  '"' + est_r + '"') else ""} \
      ~{if defined(est_r_list) then ("-estr_list " +  '"' + est_r_list + '"') else ""} \
      ~{if defined(nstr) then ("-nstr " +  '"' + nstr + '"') else ""} \
      ~{true="-ne" false="" ne} \
      ~{true="-e" false="" e} \
      ~{if defined(min_pass) then ("-min_pass " +  '"' + min_pass + '"') else ""} \
      ~{if defined(rel_min_pass) then ("-rel_min_pass " +  '"' + rel_min_pass + '"') else ""} \
      ~{true="-numeric" false="" numeric} \
      ~{true="-pass_from" false="" pass_from} \
      ~{if defined(use_column_num) then ("-u " +  '"' + use_column_num + '"') else ""} \
      ~{true="-print_num" false="" print_num} \
      ~{if defined(sk) then ("-sk " +  '"' + sk + '"') else ""} \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""} \
      ~{true="-q" false="" quite_mode_default}
  >>>
  parameter_meta {
    column_filter_applied: ":           The column to which the filter is applied (if not specified, then if either column passes, the row passes."
    number_columns_headers: ":           Number of columns that are headers (default: 1)"
    min: ":         Filter passes if the number is above or equal to <num>"
    mins: ":        Filter passes if the number is strictly above <num>"
    min_l: ":        Filter passes if the number of characters of the column is >= <num>"
    max: ":         Filter passes if the number is below or equal to <num>"
    maxs: ":        Filter passes if the number is strictly below <num>"
    max_l: ":        Filter passes if the number of characters of the column is <= <num>"
    abs: ":         Filter passes if the number is above <num> or below -<num>"
    babs: ":        Filter passes if the number is above -<num> and below <num>"
    str: ":         Filter passes if the column contains <str>"
    est_r: ":        Filter passes if the column is equal to <str>"
    est_r_list: ":   Filter passes if the column is equal to one of the values in <str1;str2;...>"
    nstr: ":        Filter passes if the column is *not* equal to <str>"
    ne: ":                Filter passes if string is not empty"
    e: ":                 Filter passes if string is empty"
    min_pass: ":    Filter passes if at least num columns pass the filter (default: 1)"
    rel_min_pass: ":Filter passes if at least int(num*rowlength) columns pass the filter"
    numeric: ":           Filter passes if string is numeric"
    pass_from: ":         Print all rows from the point that one row passed the filter"
    use_column_num: ":           Use column <num> as the value for the the specified filters (e.g. for the parameters \" -c 1 -u 0 -mins \" rows whose value in the second column is greater than the value in the first column will pass)"
    print_num: ":         Prints the number of columns that passed the filter"
    sk: ":          Print first num rows without filtering"
    skip: ":        Print first num rows without filtering"
    quite_mode_default: ":                 Quite mode (default is verbose)"
  }
}