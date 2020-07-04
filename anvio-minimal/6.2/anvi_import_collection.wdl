version 1.0

task AnviImportCollection {
  input {
    String? contigs_db
    String? pan_or_profile_db
    String? collection_name
    String? bins_info
    Boolean? contigs_mode
  }
  command <<<
    anvi-import-collection \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(bins_info) then ("--bins-info " +  '"' + bins_info + '"') else ""} \
      ~{true="--contigs-mode" false="" contigs_mode}
  >>>
  parameter_meta {
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen- contigs'"
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes database in appropriate contexts)."
    collection_name: "Collection name."
    bins_info: "Additional information for bins. The file must contain three TAB-delimited columns, where the first one must be a unique bin name, the second should be a 'source', and the last one should be a 7 character HTML color code (i.e., '#424242'). Source column must contain information about the origin of the bin. If these bins are automatically identified by a program like CONCOCT, this column could contain the program name and version. The source information will be associated with the bin in various interfaces so in a sense it is not *that* critical what it says there, but on the other hand it is, becuse we should also think about people who may end up having to work with what we put together later."
    contigs_mode: "Use this flag if your binning was done on contigs instead of splits. Please refer to the documentation for help."
  }
}