version 1.0

task UpdateSortBedMigrateCandidates {
  input {
    Boolean? resort_in_parallel_via_slur_m
  }
  command <<<
    update-sort-bed-migrate-candidates \
      ~{true="--resort-in-parallel-via-slurm" false="" resort_in_parallel_via_slur_m}
  >>>
  parameter_meta {
    resort_in_parallel_via_slur_m: "[ --slurm-memory <MB> ] [ --slurm-partition <SLURM partition> ] [ --slurm-workdir <working directory> ] [ --slurm-output <SLURM output directory> ] [ --slurm-error <SLURM error directory> ] "
  }
}