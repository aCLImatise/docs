version 1.0

task PhyluceAssemblyCopyTrinitySymlinks {
  input {
    String? assembly_symlinks
    String? conf
    String? the_output_folder
  }
  command <<<
    phyluce_assembly_copy_trinity_symlinks \
      ~{if defined(assembly_symlinks) then ("--assembly-symlinks " +  '"' + assembly_symlinks + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(the_output_folder) then ("--output " +  '"' + the_output_folder + '"') else ""}
  >>>
  parameter_meta {
    assembly_symlinks: "The location of the trinity symlinks (trinity- assemblies/contigs)"
    conf: "The configuration file to use"
    the_output_folder: "The output folder"
  }
}