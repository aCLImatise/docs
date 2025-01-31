version 1.0

task DatabaseFilter {
  input {
    File? in
    File? id
    String? method
    File? out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    DatabaseFilter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(method) then ("-method " +  '"' + method + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "*        Input FASTA file, containing a database. (valid formats: 'fasta')"
    id: "*        Input file containing identified peptides and proteins. (valid formats: 'idXML', 'mzid')"
    method: "Switch between white-/blacklisting (default: 'whitelist' valid: 'whitelist', 'blacklist')"
    out: "*       Output FASTA file where the reduced database will be written to. (valid formats: 'fasta')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}