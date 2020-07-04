version 1.0

task GetGenome.py {
  input {
    String? organism
    String? output_directory_stored
    String? server
    String? server_path
  }
  command <<<
    get_genome.py \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(output_directory_stored) then ("--output " +  '"' + output_directory_stored + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""} \
      ~{if defined(server_path) then ("--server-path " +  '"' + server_path + '"') else ""}
  >>>
  parameter_meta {
    organism: "The name of the organism for which the chromosomes are downloaded, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'."
    output_directory_stored: "The output directory where the chromosomes are stored. Default is '.'."
    server: "The Ensembl server from where the chromosomes are downloaded. Default is 'ftp.ensembl.org'."
    server_path: "The path of Ensembl server from where the chromosomes are downloaded. Default is '/pub/current_fasta/'."
  }
}