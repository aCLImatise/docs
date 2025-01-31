version 1.0

task Python27 {
  input {
    Boolean? write_files_also
    String? program_passed_string
    Boolean? debug_output_also
    Boolean? ignore_python_variables
    Boolean? inspect_interactively_evenif
    String? run_library_module
    Boolean? optimize_generated_bytecode
    Boolean? oo
    Boolean? use_pseudorandom_salt
    String? division_options_qold
    Boolean? add_site_directory
    Boolean? _don_initialization
    Boolean? issue_warnings_inconsistent
    Boolean? unbuffered_binary_stdout
    Boolean? verbose_trace_import
    Boolean? print_python_number
    String? warning_control_arg
    Boolean? skip_first_line
    Boolean? warn_python_incompatibilities
  }
  command <<<
    python2_7 \
      ~{if (write_files_also) then "-B" else ""} \
      ~{if defined(program_passed_string) then ("-c " +  '"' + program_passed_string + '"') else ""} \
      ~{if (debug_output_also) then "-d" else ""} \
      ~{if (ignore_python_variables) then "-E" else ""} \
      ~{if (inspect_interactively_evenif) then "-i" else ""} \
      ~{if defined(run_library_module) then ("-m " +  '"' + run_library_module + '"') else ""} \
      ~{if (optimize_generated_bytecode) then "-O" else ""} \
      ~{if (oo) then "-OO" else ""} \
      ~{if (use_pseudorandom_salt) then "-R" else ""} \
      ~{if defined(division_options_qold) then ("-Q " +  '"' + division_options_qold + '"') else ""} \
      ~{if (add_site_directory) then "-s" else ""} \
      ~{if (_don_initialization) then "-S" else ""} \
      ~{if (issue_warnings_inconsistent) then "-t" else ""} \
      ~{if (unbuffered_binary_stdout) then "-u" else ""} \
      ~{if (verbose_trace_import) then "-v" else ""} \
      ~{if (print_python_number) then "-V" else ""} \
      ~{if defined(warning_control_arg) then ("-W " +  '"' + warning_control_arg + '"') else ""} \
      ~{if (skip_first_line) then "-x" else ""} \
      ~{if (warn_python_incompatibilities) then "-3" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_files_also: ": don't write .py[co] files on import; also PYTHONDONTWRITEBYTECODE=x"
    program_passed_string: ": program passed in as string (terminates option list)"
    debug_output_also: ": debug output from parser; also PYTHONDEBUG=x"
    ignore_python_variables: ": ignore PYTHON* environment variables (such as PYTHONPATH)"
    inspect_interactively_evenif: ": inspect interactively after running script; forces a prompt even\\nif stdin does not appear to be a terminal; also PYTHONINSPECT=x"
    run_library_module: ": run library module as a script (terminates option list)"
    optimize_generated_bytecode: ": optimize generated bytecode slightly; also PYTHONOPTIMIZE=x"
    oo: ": remove doc-strings in addition to the -O optimizations"
    use_pseudorandom_salt: ": use a pseudo-random salt to make hash() values of various types be\\nunpredictable between separate invocations of the interpreter, as\\na defense against denial-of-service attacks"
    division_options_qold: ": division options: -Qold (default), -Qwarn, -Qwarnall, -Qnew"
    add_site_directory: ": don't add user site directory to sys.path; also PYTHONNOUSERSITE"
    _don_initialization: ": don't imply 'import site' on initialization"
    issue_warnings_inconsistent: ": issue warnings about inconsistent tab usage (-tt: issue errors)"
    unbuffered_binary_stdout: ": unbuffered binary stdout and stderr; also PYTHONUNBUFFERED=x\\nsee man page for details on internal buffering relating to '-u'"
    verbose_trace_import: ": verbose (trace import statements); also PYTHONVERBOSE=x\\ncan be supplied multiple times to increase verbosity"
    print_python_number: ": print the Python version number and exit (also --version)"
    warning_control_arg: ": warning control; arg is action:message:category:module:lineno\\nalso PYTHONWARNINGS=arg"
    skip_first_line: ": skip first line of source, allowing use of non-Unix forms of #!cmd"
    warn_python_incompatibilities: ": warn about Python 3.x incompatibilities that 2to3 cannot trivially fix"
  }
  output {
    File out_stdout = stdout()
  }
}