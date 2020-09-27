version 1.0

task HR2exe {
  input {
    Boolean? display_version_information
    Int? set_tolerance_mmu
    String? set_mass_to
    Boolean? print_only_results
    Boolean? positive_ions_electron
    Boolean? negative_ions_electron
    Boolean? apply_rules_dle
    Boolean? maximum_num_dle
    Int? element_x_use
    String in
    String si
    String ibr
  }
  command <<<
    HR2_exe \
      ~{in} \
      ~{si} \
      ~{ibr} \
      ~{if (display_version_information) then "-v" else ""} \
      ~{if defined(set_tolerance_mmu) then ("-t " +  '"' + set_tolerance_mmu + '"') else ""} \
      ~{if defined(set_mass_to) then ("-m " +  '"' + set_mass_to + '"') else ""} \
      ~{if (print_only_results) then "-s" else ""} \
      ~{if (positive_ions_electron) then "-p" else ""} \
      ~{if (negative_ions_electron) then "-n" else ""} \
      ~{if (apply_rules_dle) then "-g" else ""} \
      ~{if (maximum_num_dle) then "-a" else ""} \
      ~{if defined(element_x_use) then ("-X " +  '"' + element_x_use + '"') else ""}
  >>>
  parameter_meta {
    display_version_information: "Display version information."
    set_tolerance_mmu: "Set tolerance to 'tol' mmu (default 5)."
    set_mass_to: "Set mass to 'mz'."
    print_only_results: "Print only the results (dle)-c      Number of charges i.e -c 1 is equivalent to -p (dle)."
    positive_ions_electron: "Positive ions; electron mass is removed from the formula."
    negative_ions_electron: "Negative ions; electron mass is added to the formula."
    apply_rules_dle: "Does not apply 4-7 golden rules (dle)."
    maximum_num_dle: "Maximum num. of adducts.  (dle)"
    element_x_use: "For element X, use atom range a to b. List of valid atoms:\\nX    key   mass (6 decimals shown)"
    in: "-M       15.000109\\nO     -O       15.994915\\nF     -F       18.998403"
    si: "-I       27.976927\\nP     -P       30.973762\\nS     -S       31.972071"
    ibr: "-G       80.916291\\nK     -K       38.963707"
  }
  output {
    File out_stdout = stdout()
  }
}