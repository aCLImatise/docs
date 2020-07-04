version 1.0

task SnaptoolsSnapAddGmat {
  input {
    String? snap_file
    String? gene_file
    String? buffer_size
    String? tmp_folder
    String? verbose
  }
  command <<<
    snaptools snap-add-gmat \
      ~{if defined(snap_file) then ("--snap-file " +  '"' + snap_file + '"') else ""} \
      ~{if defined(gene_file) then ("--gene-file " +  '"' + gene_file + '"') else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(tmp_folder) then ("--tmp-folder " +  '"' + tmp_folder + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    snap_file: "snap file. (default: None)"
    gene_file: "bed file contains genes. (default: None)"
    buffer_size: "max number of barcodes be stored in the memory. (default: 1000)"
    tmp_folder: "a directory to store temporary files. If not given, snaptools will automatically generate a temporary location to store temporary files. (default: None)"
    verbose: "a boolen tag indicates output the progress. (default: True)"
  }
}