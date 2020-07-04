version 1.0

task Packagemanager {
  input {
    String? list
    String? add
    String? del
    String? version
    String? use_app_dir
    String? dir
    String? update
    String? update_now
  }
  command <<<
    packagemanager \
      ~{if defined(list) then ("-list " +  '"' + list + '"') else ""} \
      ~{if defined(add) then ("-add " +  '"' + add + '"') else ""} \
      ~{if defined(del) then ("-del " +  '"' + del + '"') else ""} \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""} \
      ~{if defined(use_app_dir) then ("-useAppDir " +  '"' + use_app_dir + '"') else ""} \
      ~{if defined(dir) then ("-dir " +  '"' + dir + '"') else ""} \
      ~{if defined(update) then ("-update " +  '"' + update + '"') else ""} \
      ~{if defined(update_now) then ("-updatenow " +  '"' + update_now + '"') else ""}
  >>>
  parameter_meta {
    list: "available packages"
    add: "the <NAME> package"
    del: "the <NAME> package"
    version: "package version"
    use_app_dir: "application (system wide) installation directory. Note this requires writing rights to the application directory. If not specified, the user's BEAST directory will be used."
    dir: "package in directory <DIR>. This overrides the useAppDir option"
    update: "for updates, and ask to install if available"
    update_now: "for updates and install without asking"
  }
}