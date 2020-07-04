version 1.0

task KtImportFCP {
  input {
    String fcp_output
    String magnitudes
    String name
  }
  command <<<
    ktImportFCP \
      ~{fcp_output} \
      ~{magnitudes} \
      ~{name}
  >>>
  parameter_meta {
    fcp_output: "Results of running any FCP classification tool (except BLASTN.py, which only outputs raw BLAST results). By default, separate datasets will be created for each input (see [-c])."
    magnitudes: "Optional file listing query IDs with magnitudes, separated by tabs. This can be used to account for read length or contig depth to obtain a more accurate representation of abundance. By default, query sequences without specified magnitudes will be assigned a magnitude of 1. Magnitude files for assemblies in ACE format can be created with ktGetContigMagnitudes."
    name: "A name to show in the list of datasets in the Krona chart (if multiple input files are present and [-c] is not specified). By default, the basename of the file will be used. _________"
  }
}