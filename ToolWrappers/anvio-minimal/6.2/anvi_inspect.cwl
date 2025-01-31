class: CommandLineTool
id: anvi_inspect.cwl
inputs:
- id: in_profile_db
  doc: Anvi'o profile database
  type: string?
  inputBinding:
    prefix: --profile-db
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string?
  inputBinding:
    prefix: --contigs-db
- id: in_split_name
  doc: Split name.
  type: string?
  inputBinding:
    prefix: --split-name
- id: in_ip_address
  doc: "IP address for the HTTP server. The default ip address\n(0.0.0.0) should work\
    \ just fine for most."
  type: double?
  inputBinding:
    prefix: --ip-address
- id: in_port_number
  doc: "Port number to use for anvi'o services. If nothing is\ndeclared, anvi'o will\
    \ try to find a suitable port\nnumber, starting from the default port number,\
    \ 8080."
  type: long?
  inputBinding:
    prefix: --port-number
- id: in_server_only
  doc: "The default behavior is to start the local server, and\nfire up a browser\
    \ that connects to the server. If you\nhave other plans, and want to start the\
    \ server without\ncalling the browser, this is the flag you need."
  type: boolean?
  inputBinding:
    prefix: --server-only
- id: in_just_do_it
  doc: "Don't bother me with questions or warnings, just do\nit.\n"
  type: boolean?
  inputBinding:
    prefix: --just-do-it
- id: in_interface_dot
  doc: "--hide-outlier-SNVs   During profiling, anvi'o marks positions of single-\n\
    nucleotide variations (SNVs) that originate from\nplaces in contigs where coverage\
    \ values are a bit\n'sketchy'. If you would like to avoid SNVs in those\npositions\
    \ of splits in applicable projects you can use\nthis flag, and the interface would\
    \ hide SNVs that are\nmarked as 'outlier' (although it is clearly the best\nto\
    \ see everything, no one will judge you if you end up\nusing this flag) (plus,\
    \ there may or may not be some\nhistorical data on this here:\nhttps://github.com/meren/anvio/issues/309)."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-inspect
