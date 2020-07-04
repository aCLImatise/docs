version 1.0

task Etraining {
  input {
    String? species
    String train_filename
  }
  command <<<
    etraining \
      ~{train_filename} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    species: ""
    train_filename: ""
  }
}