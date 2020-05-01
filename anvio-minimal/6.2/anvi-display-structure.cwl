#!/usr/bin/env cwl-runner

baseCommand:
- anvi-display-structure
class: CommandLineTool
cwlVersion: v1.0
id: anvi-display-structure
inputs:
- doc: Anvi'o structure database.
  id: structure_db
  inputBinding:
    prefix: --structure-db
  type: string
- doc: Anvi'o profile database
  id: profile_db
  inputBinding:
    prefix: --profile-db
  type: string
- doc: Anvi'o contigs database generated by 'anvi-gen- contigs'
  id: contigs_db
  inputBinding:
    prefix: --contigs-db
  type: string
- doc: The output of anvi-gen-variability-profile, or a different variant-calling
    output that has been converted to the anvi'o format.
  id: variability_profile
  inputBinding:
    prefix: --variability-profile
  type: string
- doc: A file with split names. There should be only one column in the file, and each
    line should correspond to a unique split name.
  id: splits_of_interest
  inputBinding:
    prefix: --splits-of-interest
  type: File
- doc: Collection name.
  id: collection_name
  inputBinding:
    prefix: --collection-name
  type: string
- doc: If provided, any genes found in both your bin and your structure database will
    be available for display.
  id: bin_id
  inputBinding:
    prefix: --bin-id
  type: string
- doc: A file with samples names. There should be only one column in the file, and
    each line should correspond to a unique sample name (without a column header).
  id: samples_of_interest
  inputBinding:
    prefix: --samples-of-interest
  type: File
- doc: A file with anvi'o gene caller IDs. There should be only one column in the
    file, and each line should correspond to a unique gene caller id (without a column
    header).
  id: genes_of_interest
  inputBinding:
    prefix: --genes-of-interest
  type: File
- doc: Gene caller ids. Multiple of them can be declared separated by a delimiter
    (the default is a comma). In anvi-gen-variability-profile, if you declare nothing
    you will get all genes matching your other filtering criteria. In other programs,
    you may get everything, nothing, or an error. It really depends on the situation.
    Fortunately, mistakes are cheap, so it's worth a try.
  id: gene_caller_ids
  inputBinding:
    prefix: --gene-caller-ids
  type: string
- doc: Takes a value between 0 and 1, where 1 is maximum divergence from the consensus.
    it can be an expensive operation to display every variable position, and so the
    default is 0.05. To display every variable position, set this parameter to 0
  id: min_departure_from_consensus
  inputBinding:
    prefix: --min-departure-from-consensus
  type: double
- doc: If provided, variability will be generated for single amino acid variants (SAAVs)
    and not for single codon variants (SCVs). This could save you some time if you're
    only interested in SAAVs.
  id: sa_avs_only
  inputBinding:
    prefix: --SAAVs-only
  type: boolean
- doc: If provided, variability will be generated for single codon variants (SCVs)
    and not for single amino acid variants (SAAVs). This could save you some time
    if you're only interested in SCVs.
  id: s_cvs_only
  inputBinding:
    prefix: --SCVs-only
  type: boolean
- doc: IP address for the HTTP server. The default ip address (0.0.0.0) should work
    just fine for most.
  id: ip_address
  inputBinding:
    prefix: --ip-address
  type: string
- doc: Port number to use for anvi'o services. If nothing is declared, anvi'o will
    try to find a suitable port number, starting from the default port number, 8080.
  id: port_number
  inputBinding:
    prefix: --port-number
  type: long
- doc: By default, anvi'o will use your default browser to launch the interactive
    interface. If you would like to use something else than your system default, you
    can provide a full path for an alternative browser using this parameter, and hope
    for the best. For instance we are using this parameter to call Google's experimental
    browser, Canary, which performs better with demanding visualizations.
  id: browser_path
  inputBinding:
    prefix: --browser-path
  type: File
- doc: The default behavior is to start the local server, and fire up a browser that
    connects to the server. If you have other plans, and want to start the server
    without calling the browser, this is the flag you need.
  id: server_only
  inputBinding:
    prefix: --server-only
  type: boolean
- doc: If this flag is set, command line tool will ask you to enter a password and
    interactive interface will be only accessible after entering same password. This
    option is recommended for shared machines like clusters or shared networks where
    computers are not isolated.
  id: password_protected
  inputBinding:
    prefix: --password-protected
  type: boolean
