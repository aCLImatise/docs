version 1.0

task MhcflurryClass1TrainPanAlleleModels {
  input {
    Boolean? ignore_inequalities
    String? num_folds
    String? num_replicates
    String? max_epochs
    File? allele_sequences
    String? verbosity
    Boolean? debug
    Boolean? continue_incomplete
    Boolean? only_initialize
    String? num_jobs
    String? backend
    String? gpus
    String? max_workers_per_gpu
    String? max_tasks_per_worker
    String? worker_log_dir
    String? cluster_max_retries
    String train
    String class_one
    String pan_allele
    String models_dot
  }
  command <<<
    mhcflurry-class1-train-pan-allele-models \
      ~{train} \
      ~{class_one} \
      ~{pan_allele} \
      ~{models_dot} \
      ~{true="--ignore-inequalities" false="" ignore_inequalities} \
      ~{if defined(num_folds) then ("--num-folds " +  '"' + num_folds + '"') else ""} \
      ~{if defined(num_replicates) then ("--num-replicates " +  '"' + num_replicates + '"') else ""} \
      ~{if defined(max_epochs) then ("--max-epochs " +  '"' + max_epochs + '"') else ""} \
      ~{if defined(allele_sequences) then ("--allele-sequences " +  '"' + allele_sequences + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--continue-incomplete" false="" continue_incomplete} \
      ~{true="--only-initialize" false="" only_initialize} \
      ~{if defined(num_jobs) then ("--num-jobs " +  '"' + num_jobs + '"') else ""} \
      ~{if defined(backend) then ("--backend " +  '"' + backend + '"') else ""} \
      ~{if defined(gpus) then ("--gpus " +  '"' + gpus + '"') else ""} \
      ~{if defined(max_workers_per_gpu) then ("--max-workers-per-gpu " +  '"' + max_workers_per_gpu + '"') else ""} \
      ~{if defined(max_tasks_per_worker) then ("--max-tasks-per-worker " +  '"' + max_tasks_per_worker + '"') else ""} \
      ~{if defined(worker_log_dir) then ("--worker-log-dir " +  '"' + worker_log_dir + '"') else ""} \
      ~{if defined(cluster_max_retries) then ("--cluster-max-retries " +  '"' + cluster_max_retries + '"') else ""}
  >>>
  parameter_meta {
    ignore_inequalities: "Do not use affinity value inequalities even when present in data"
    num_folds: "Number of training folds."
    num_replicates: "Number of replicates per (architecture, fold) pair to train."
    max_epochs: "Max training epochs. If specified here it overrides any 'max_epochs' specified in the hyperparameters."
    allele_sequences: "Allele sequences file."
    verbosity: "Keras verbosity. Default: 0"
    debug: "Launch python debugger on error"
    continue_incomplete: "Continue training models from an incomplete training run. If this is specified then the only required argument is --out-models-dir"
    only_initialize: "Do not actually train models. The initialized run can be continued later with --continue-incomplete."
    num_jobs: "Number of local processes to parallelize training over. Set to 0 for serial run. Default: 0."
    backend: "Keras backend. If not specified will use system default."
    gpus: "Number of GPUs to attempt to parallelize across. Requires running in parallel."
    max_workers_per_gpu: "Maximum number of workers to assign to a GPU. Additional tasks will run on CPU."
    max_tasks_per_worker: "Restart workers after N tasks. Workaround for tensorflow memory leaks. Requires Python >=3.2."
    worker_log_dir: "Write worker stdout and stderr logs to given directory."
    cluster_max_retries: "How many times to rerun failing jobs. Default: 3"
    train: ""
    class_one: ""
    pan_allele: ""
    models_dot: ""
  }
}