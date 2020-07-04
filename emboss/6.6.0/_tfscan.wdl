version 1.0

task _tfscan {
  input {
    Boolean? menu
    Boolean? mismatch
  }
  command <<<
    _tfscan \
      ~{true="-menu" false="" menu} \
      ~{true="-mismatch" false="" mismatch}
  >>>
  parameter_meta {
    menu: "menu       [V] Select class (Values: F (fungi); I (insect); P (plant); V (vertebrate); O (other); C (Custom))"
    mismatch: "integer    [0] Number of mismatches (Integer 0 or more)"
  }
}