class: CommandLineTool
id: toil_cwl_runner.cwl
inputs:
- id: in_logoff
  doc: Same as --logCritical
  type: boolean
  inputBinding:
    prefix: --logOff
- id: in_log_critical
  doc: "Turn on logging at level CRITICAL and above. (default\nis INFO)"
  type: boolean
  inputBinding:
    prefix: --logCritical
- id: in_log_error
  doc: "Turn on logging at level ERROR and above. (default is\nINFO)"
  type: boolean
  inputBinding:
    prefix: --logError
- id: in_log_warning
  doc: "Turn on logging at level WARNING and above. (default\nis INFO)"
  type: boolean
  inputBinding:
    prefix: --logWarning
- id: in_loginfo
  doc: "Turn on logging at level INFO and above. (default is\nINFO)"
  type: boolean
  inputBinding:
    prefix: --logInfo
- id: in_log_debug
  doc: "Turn on logging at level DEBUG and above. (default is\nINFO)"
  type: boolean
  inputBinding:
    prefix: --logDebug
- id: in_loglevel
  doc: "Log at given level (may be either OFF (or CRITICAL),\nERROR, WARN (or WARNING),\
    \ INFO or DEBUG). (default is\nINFO)"
  type: string
  inputBinding:
    prefix: --logLevel
- id: in_log_file
  doc: File to log in
  type: File
  inputBinding:
    prefix: --logFile
- id: in_rotating_logging
  doc: "Turn on rotating logging, which prevents log files\ngetting too big."
  type: boolean
  inputBinding:
    prefix: --rotatingLogging
- id: in_workdir
  doc: "Absolute path to directory where temporary files\ngenerated during the Toil\
    \ run should be placed.\nStandard output and error from batch system jobs\n(unless\
    \ --noStdOutErr) will be placed in this\ndirectory. A cache directory may be placed\
    \ in this\ndirectory. Temp files and folders will be placed in a\ndirectory toil-<workflowID>\
    \ within workDir. The\nworkflowID is generated by Toil and will be reported\n\
    in the workflow logs. Default is determined by the\nvariables (TMPDIR, TEMP, TMP)\
    \ via mkdtemp. This\ndirectory needs to exist on all machines running jobs;\n\
    if capturing standard output and error from batch\nsystem jobs is desired, it\
    \ will generally need to be\non a shared file system. When sharing a cache between\n\
    containers on a host, this directory must be shared\nbetween the containers."
  type: File
  inputBinding:
    prefix: --workDir
- id: in_no_stdout_err
  doc: "Do not capture standard output and error from batch\nsystem jobs."
  type: boolean
  inputBinding:
    prefix: --noStdOutErr
- id: in_stats
  doc: "Records statistics about the toil workflow to be used\nby 'toil stats'."
  type: boolean
  inputBinding:
    prefix: --stats
- id: in_clean
  doc: "Determines the deletion of the jobStore upon\ncompletion of the program. Choices:\
    \ 'always',\n'onError','never', 'onSuccess'. The --stats option\nrequires information\
    \ from the jobStore upon completion\nso the jobStore will never be deleted withthat\
    \ flag.\nIf you wish to be able to restart the run, choose\n'never' or 'onSuccess'.\
    \ Default is 'never' if stats is\nenabled, and 'onSuccess' otherwise"
  type: string
  inputBinding:
    prefix: --clean
- id: in_clean_workdir
  doc: "Determines deletion of temporary worker directory upon\ncompletion of a job.\
    \ Choices: 'always', 'never',\n'onSuccess'. Default = always. WARNING: This option\n\
    should be changed for debugging only. Running a full\npipeline with this option\
    \ could fill your disk with\nintermediate data."
  type: string
  inputBinding:
    prefix: --cleanWorkDir
- id: in_cluster_stats
  doc: "[CLUSTERSTATS]\nIf enabled, writes out JSON resource usage statistics\nto\
    \ a file. The default location for this file is the\ncurrent working directory,\
    \ but an absolute path can\nalso be passed to specify where this file should be\n\
    written. This options only applies when using scalable\nbatch systems."
  type: File
  inputBinding:
    prefix: --clusterStats
- id: in_restart
  doc: "If --restart is specified then will attempt to restart\nexisting workflow\
    \ at the location pointed to by the\n--jobStore option. Will raise an exception\
    \ if the\nworkflow does not exist"
  type: boolean
  inputBinding:
    prefix: --restart
- id: in_batch_system
  doc: "The type of batch system to run the job(s) with,\ncurrently can be one of\
    \ Slurm, Torque, LSF,\nKubernetes, Mesos, HTCondor, singleMachine, parasol,\n\
    gridEngine'. default=singleMachine"
  type: string
  inputBinding:
    prefix: --batchSystem
- id: in_disable_hot_deployment
  doc: "Hot-deployment was renamed to auto-deployment. Option\nnow redirects to --disableAutoDeployment.\
    \ Left in for\nbackwards compatibility."
  type: boolean
  inputBinding:
    prefix: --disableHotDeployment
- id: in_disable_auto_deployment
  doc: "Should auto-deployment of the user script be\ndeactivated? If True, the user\
    \ script/package should\nbe present at the same location on all workers.\ndefault=false"
  type: boolean
  inputBinding:
    prefix: --disableAutoDeployment
- id: in_max_local_jobs
  doc: "For batch systems that support a local queue for\nhousekeeping jobs (Mesos,\
    \ GridEngine, htcondor, lsf,\nslurm, torque), the maximum number of these\nhousekeeping\
    \ jobs to run on the local system. The\ndefault (equal to the number of cores)\
    \ is a maximum of\n8 concurrent local housekeeping jobs."
  type: long
  inputBinding:
    prefix: --maxLocalJobs
- id: in_manual_mem_args
  doc: "Do not add the default arguments: 'hv=MEMORY' &\n'h_vmem=MEMORY' to the qsub\
    \ call, and instead rely on\nTOIL_GRIDGENGINE_ARGS to supply alternative arguments.\n\
    Requires that TOIL_GRIDGENGINE_ARGS be set."
  type: boolean
  inputBinding:
    prefix: --manualMemArgs
- id: in_run_cwl_internal_jobs_on_workers
  doc: "Whether to run CWL internal jobs (e.g. CWLScatter) on\nthe worker nodes instead\
    \ of the primary node. If false\n(default), then all such jobs are run on the\
    \ primary\nnode. Setting this to true can speed up the pipeline\nfor very large\
    \ workflows with many sub-workflows\nand/or scatters, provided that the worker\
    \ pool is\nlarge enough."
  type: boolean
  inputBinding:
    prefix: --runCwlInternalJobsOnWorkers
- id: in_parasol_command
  doc: "The name or path of the parasol program. Will be\nlooked up on PATH unless\
    \ it starts with a slash.\ndefault=parasol"
  type: File
  inputBinding:
    prefix: --parasolCommand
- id: in_parasol_max_batches
  doc: "Maximum number of job batches the Parasol batch is\nallowed to create. One\
    \ batch is created for jobs with\na a unique set of resource requirements. default=1000"
  type: long
  inputBinding:
    prefix: --parasolMaxBatches
- id: in_scale
  doc: "A scaling factor to change the value of all submitted\ntasks's submitted cores.\
    \ Used in singleMachine batch\nsystem. default=1"
  type: long
  inputBinding:
    prefix: --scale
- id: in_no_link_imports
  doc: "When using a filesystem based job store, CWL input\nfiles are by default symlinked\
    \ in. Specifying this\noption instead copies the files into the job store,\nwhich\
    \ may protect them from being modified externally.\nWhen not specified and as\
    \ long as caching is enabled,\nToil will protect the file automatically by changing\n\
    the permissions to read-only."
  type: boolean
  inputBinding:
    prefix: --noLinkImports
- id: in_no_move_exports
  doc: "When using a filesystem based job store, output files\nare by default moved\
    \ to the output directory, and a\nsymlink to the moved exported file is created\
    \ at the\ninitial location. Specifying this option instead\ncopies the files into\
    \ the output directory. Applies to\nfilesystem-based job stores only."
  type: File
  inputBinding:
    prefix: --noMoveExports
- id: in_mesos_master
  doc: "The host and port of the Mesos master separated by\ncolon. (default: 172.17.0.4:5050)"
  type: double
  inputBinding:
    prefix: --mesosMaster
- id: in_ku_bernet_es_host_path
  doc: "Path on Kubernetes hosts to use as shared inter-pod\ntemp directory (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --kubernetesHostPath
- id: in_node_types
  doc: "List of node types separated by commas. The syntax for\neach node type depends\
    \ on the provisioner used. For\nthe cgcloud and AWS provisioners this is the name\
    \ of\nan EC2 instance type, optionally followed by a colon\nand the price in dollars\
    \ to bid for a spot instance of\nthat type, for example 'c3.8xlarge:0.42'.If no\
    \ spot\nbid is specified, nodes of this type will be non-\npreemptable.It is acceptable\
    \ to specify an instance as\nboth preemptable and non-preemptable, including it\n\
    twice in the list. In that case,preemptable nodes of\nthat type will be preferred\
    \ when creating new nodes\nonce the maximum number of preemptable-nodes has\n\
    beenreached."
  type: long
  inputBinding:
    prefix: --nodeTypes
- id: in_node_options
  doc: "Options for provisioning the nodes. The syntax depends\non the provisioner\
    \ used. Neither the CGCloud nor the\nAWS provisioner support any node options."
  type: string
  inputBinding:
    prefix: --nodeOptions
- id: in_min_nodes
  doc: "Mininum number of nodes of each type in the cluster,\nif using auto-scaling.\
    \ This should be provided as a\ncomma-separated list of the same length as the\
    \ list of\nnode types. default=0"
  type: long
  inputBinding:
    prefix: --minNodes
- id: in_max_nodes
  doc: "Maximum number of nodes of each type in the cluster,\nif using autoscaling,\
    \ provided as a comma-separated\nlist. The first value is used as a default if\
    \ the list\nlength is less than the number of nodeTypes.\ndefault=10"
  type: long
  inputBinding:
    prefix: --maxNodes
- id: in_target_time
  doc: "Sets how rapidly you aim to complete jobs in seconds.\nShorter times mean\
    \ more aggressive parallelization.\nThe autoscaler attempts to scale up/down so\
    \ that it\nexpects all queued jobs will complete within\ntargetTime seconds. default=1800"
  type: long
  inputBinding:
    prefix: --targetTime
- id: in_beta_inertia
  doc: "A smoothing parameter to prevent unnecessary\noscillations in the number of\
    \ provisioned nodes. This\ncontrols an exponentially weighted moving average of\n\
    the estimated number of nodes. A value of 0.0 disables\nany smoothing, and a value\
    \ of 0.9 will smooth so much\nthat few changes will ever be made. Must be between\n\
    0.0 and 0.9. default=0.1"
  type: long
  inputBinding:
    prefix: --betaInertia
- id: in_scale_interval
  doc: "The interval (seconds) between assessing if the scale\nof the cluster needs\
    \ to change. default=60"
  type: long
  inputBinding:
    prefix: --scaleInterval
- id: in_preempt_able_compensation
  doc: "The preference of the autoscaler to replace\npreemptable nodes with non-preemptable\
    \ nodes, when\npreemptable nodes cannot be started for some reason.\nDefaults\
    \ to 0.0. This value must be between 0.0 and\n1.0, inclusive. A value of 0.0 disables\
    \ such\ncompensation, a value of 0.5 compensates two missing\npreemptable nodes\
    \ with a non-preemptable one. A value\nof 1.0 replaces every missing pre-emptable\
    \ node with a\nnon-preemptable one."
  type: double
  inputBinding:
    prefix: --preemptableCompensation
- id: in_node_storage
  doc: "Specify the size of the root volume of worker nodes\nwhen they are launched\
    \ in gigabytes. You may want to\nset this if your jobs require a lot of disk space.\
    \ The\ndefault value is 50."
  type: long
  inputBinding:
    prefix: --nodeStorage
- id: in_metrics
  doc: "Enable the prometheus/grafana dashboard for monitoring\nCPU/RAM usage, queue\
    \ size, and issued jobs."
  type: boolean
  inputBinding:
    prefix: --metrics
- id: in_default_memory
  doc: "The default amount of memory to request for a job.\nOnly applicable to jobs\
    \ that do not specify an\nexplicit value for this requirement. Standard suffixes\n\
    like K, Ki, M, Mi, G or Gi are supported. Default is\n2.0 Gi"
  type: long
  inputBinding:
    prefix: --defaultMemory
- id: in_default_cores
  doc: "The default number of CPU cores to dedicate a job.\nOnly applicable to jobs\
    \ that do not specify an\nexplicit value for this requirement. Fractions of a\n\
    core (for example 0.1) are supported on some batch\nsystems, namely Mesos and\
    \ singleMachine. Default is\n1.0"
  type: double
  inputBinding:
    prefix: --defaultCores
- id: in_default_disk
  doc: "The default amount of disk space to dedicate a job.\nOnly applicable to jobs\
    \ that do not specify an\nexplicit value for this requirement. Standard suffixes\n\
    like K, Ki, M, Mi, G or Gi are supported. Default is\n2.0 Gi"
  type: long
  inputBinding:
    prefix: --defaultDisk
- id: in_default_preempt_able
  doc: "--maxCores INT        The maximum number of CPU cores to request from the\n\
    batch system at any one time. Standard suffixes like\nK, Ki, M, Mi, G or Gi are\
    \ supported. Default is 8.0 Ei\n--maxMemory INT       The maximum amount of memory\
    \ to request from the batch\nsystem at any one time. Standard suffixes like K,\
    \ Ki,\nM, Mi, G or Gi are supported. Default is 8.0 Ei\n--maxDisk INT        \
    \ The maximum amount of disk space to request from the\nbatch system at any one\
    \ time. Standard suffixes like\nK, Ki, M, Mi, G or Gi are supported. Default is\
    \ 8.0 Ei"
  type: boolean
  inputBinding:
    prefix: --defaultPreemptable
- id: in_retry_count
  doc: "Number of times to retry a failing job before giving\nup and labeling job\
    \ failed. default=1"
  type: long
  inputBinding:
    prefix: --retryCount
- id: in_enable_unlimited_preempt_able_retries
  doc: "If set, preemptable failures (or any failure due to an\ninstance getting unexpectedly\
    \ terminated) would not\ncount towards job failures and --retryCount."
  type: boolean
  inputBinding:
    prefix: --enableUnlimitedPreemptableRetries
- id: in_max_job_duration
  doc: "Maximum runtime of a job (in seconds) before we kill\nit (this is a lower\
    \ bound, and the actual time before\nkilling the job may be longer).\ndefault=9223372036854775807"
  type: long
  inputBinding:
    prefix: --maxJobDuration
- id: in_rescue_jobs_frequency
  doc: "Period of time to wait (in seconds) between checking\nfor missing/overlong\
    \ jobs, that is jobs which get lost\nby the batch system. Expert parameter. default=3600"
  type: long
  inputBinding:
    prefix: --rescueJobsFrequency
- id: in_disable_caching
  doc: "[DISABLECACHING]\nDisables caching in the file store. This flag must be\n\
    set to use a batch system that does not support\ncaching such as Grid Engine,\
    \ Parasol, LSF, or Slurm"
  type: boolean
  inputBinding:
    prefix: --disableCaching
- id: in_disable_chaining
  doc: "Disables chaining of jobs (chaining uses one job's\nresource allocation for\
    \ its successor job if\npossible)."
  type: boolean
  inputBinding:
    prefix: --disableChaining
- id: in_disable_job_store_checksum_verification
  doc: "Disables checksum verification for files transferred\nto/from the job store.\
    \ Checksum verification is a\nsafety check to ensure the data is not corrupted\n\
    during transfer. Currently only supported for non-\nstreaming AWS files."
  type: boolean
  inputBinding:
    prefix: --disableJobStoreChecksumVerification
- id: in_max_log_file_size
  doc: "The maximum size of a job log file to keep (in bytes),\nlog files larger than\
    \ this will be truncated to the\nlast X bytes. Setting this option to zero will\
    \ prevent\nany truncation. Setting this option to a negative\nvalue will truncate\
    \ from the beginning.Default=62.5 K"
  type: long
  inputBinding:
    prefix: --maxLogFileSize
- id: in_write_logs
  doc: "[WRITELOGS]\nWrite worker logs received by the leader into their\nown files\
    \ at the specified path. Any non-empty\nstandard output and error from failed\
    \ batch system\njobs will also be written into files at this path. The\ncurrent\
    \ working directory will be used if a path is\nnot specified explicitly. Note:\
    \ By default only the\nlogs of failed jobs are returned to leader. Set log\nlevel\
    \ to 'debug' or enable '--writeLogsFromAllJobs' to\nget logs back from successful\
    \ jobs, and adjust\n'maxLogFileSize' to control the truncation limit for\nworker\
    \ logs."
  type: File
  inputBinding:
    prefix: --writeLogs
- id: in_write_logs_gzip
  doc: "[WRITELOGSGZIP]\nIdentical to --writeLogs except the logs files are\ngzipped\
    \ on the leader."
  type: boolean
  inputBinding:
    prefix: --writeLogsGzip
- id: in_write_logs_from_all_jobs
  doc: "Whether to write logs from all jobs (including the\nsuccessful ones) without\
    \ necessarily setting the log\nlevel to 'debug'. Ensure that either --writeLogs\
    \ or\n--writeLogsGzip is set if enabling this option."
  type: boolean
  inputBinding:
    prefix: --writeLogsFromAllJobs
- id: in_real_time_logging
  doc: Enable real-time logging from workers to masters
  type: boolean
  inputBinding:
    prefix: --realTimeLogging
- id: in_sse_key
  doc: "Path to file containing 32 character key to be used\nfor server-side encryption\
    \ on awsJobStore or\ngoogleJobStore. SSE will not be used if this flag is\nnot\
    \ passed."
  type: File
  inputBinding:
    prefix: --sseKey
- id: in_setenv
  doc: "=VALUE or NAME, -e NAME=VALUE or NAME\nSet an environment variable early on\
    \ in the worker. If\nVALUE is omitted, it will be looked up in the current\nenvironment.\
    \ Independently of this option, the worker\nwill try to emulate the leader's environment\
    \ before\nrunning a job, except for some variables known to vary\nacross systems.\
    \ Using this option, a variable can be\ninjected into the worker process itself\
    \ before it is\nstarted."
  type: string
  inputBinding:
    prefix: --setEnv
- id: in_service_polling_interval
  doc: "Interval of time service jobs wait between polling for\nthe existence of the\
    \ keep-alive flag (defailt=60)"
  type: long
  inputBinding:
    prefix: --servicePollingInterval
- id: in_force_docker_appliance
  doc: "Disables sanity checking the existence of the docker\nimage specified by TOIL_APPLIANCE_SELF,\
    \ which Toil\nuses to provision mesos for autoscaling."
  type: boolean
  inputBinding:
    prefix: --forceDockerAppliance
- id: in_disable_progress
  doc: "Disables the progress bar shown when standard error is\na terminal."
  type: boolean
  inputBinding:
    prefix: --disableProgress
- id: in_debug_worker
  doc: "Experimental no forking mode for local debugging.\nSpecifically, workers are\
    \ not forked and stderr/stdout\nare not redirected to the log."
  type: boolean
  inputBinding:
    prefix: --debugWorker
- id: in_disable_worker_output_capture
  doc: "Let worker output go to worker's standard out/error\ninstead of per-job logs."
  type: boolean
  inputBinding:
    prefix: --disableWorkerOutputCapture
- id: in_bad_worker
  doc: "For testing purposes randomly kill 'badWorker'\nproportion of jobs using SIGKILL,\
    \ default=0.0"
  type: double
  inputBinding:
    prefix: --badWorker
- id: in_bad_worker_fail_interval
  doc: "When killing the job pick uniformly within the\ninterval from 0.0 to 'badWorkerFailInterval'\
    \ seconds\nafter the worker starts, default=0.01"
  type: double
  inputBinding:
    prefix: --badWorkerFailInterval
- id: in_provenance
  doc: "Save provenance to specified folder as a Research\nObject that captures and\
    \ aggregates workflow execution\nand data products."
  type: Directory
  inputBinding:
    prefix: --provenance
- id: in_enable_user_provenance
  doc: Record user account info as part of provenance.
  type: boolean
  inputBinding:
    prefix: --enable-user-provenance
- id: in_disable_user_provenance
  doc: Do not record user account info in provenance.
  type: boolean
  inputBinding:
    prefix: --disable-user-provenance
- id: in_enable_host_provenance
  doc: Record host info as part of provenance.
  type: boolean
  inputBinding:
    prefix: --enable-host-provenance
- id: in_disable_host_provenance
  doc: Do not record host info in provenance.
  type: boolean
  inputBinding:
    prefix: --disable-host-provenance
- id: in_or_cid
  doc: "Record user ORCID identifier as part of provenance,\ne.g. https://orcid.org/0000-0002-1825-0097\
    \ or\n0000-0002-1825-0097. Alternatively the environment\nvariable ORCID may be\
    \ set."
  type: long
  inputBinding:
    prefix: --orcid
- id: in_full_name
  doc: "Record full name of user as part of provenance, e.g.\nJosiah Carberry. You\
    \ may need to use shell quotes to\npreserve spaces. Alternatively the environment\n\
    variable CWL_FULL_NAME may be set.\n"
  type: string
  inputBinding:
    prefix: --full-name
- id: in_cwl_tool
  doc: cwljob
  type: string
  inputBinding:
    position: 0
- id: in_job_store
  doc: "The location of the job store for the workflow. A job\nstore holds persistent\
    \ information about the jobs and\nfiles in a workflow. If the workflow is run\
    \ with a\ndistributed batch system, the job store must be\naccessible by all worker\
    \ nodes. Depending on the\ndesired job store implementation, the location should\n\
    be formatted according to one of the following\nschemes: file:<path> where <path>\
    \ points to a\ndirectory on the file systen aws:<region>:<prefix>\nwhere <region>\
    \ is the name of an AWS region like us-\nwest-2 and <prefix> will be prepended\
    \ to the names of\nany top-level AWS resources in use by job store, e.g.\nS3 buckets.\
    \ google:<project_id>:<prefix> TODO: explain\nFor backwards compatibility, you\
    \ may also specify\n./foo (equivalent to file:./foo or just file:foo) or\n/bar\
    \ (equivalent to file:/bar)."
  type: string
  inputBinding:
    position: 0
- id: in_provisioning_dot
  doc: "--provisioner {aws,gce}\nThe provisioner for cluster auto-scaling. The\ncurrently\
    \ supported choices are'gce', or 'aws'. The\ndefault is None."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_workdir
  doc: "Absolute path to directory where temporary files\ngenerated during the Toil\
    \ run should be placed.\nStandard output and error from batch system jobs\n(unless\
    \ --noStdOutErr) will be placed in this\ndirectory. A cache directory may be placed\
    \ in this\ndirectory. Temp files and folders will be placed in a\ndirectory toil-<workflowID>\
    \ within workDir. The\nworkflowID is generated by Toil and will be reported\n\
    in the workflow logs. Default is determined by the\nvariables (TMPDIR, TEMP, TMP)\
    \ via mkdtemp. This\ndirectory needs to exist on all machines running jobs;\n\
    if capturing standard output and error from batch\nsystem jobs is desired, it\
    \ will generally need to be\non a shared file system. When sharing a cache between\n\
    containers on a host, this directory must be shared\nbetween the containers."
  type: File
  outputBinding:
    glob: $(inputs.in_workdir)
- id: out_cluster_stats
  doc: "[CLUSTERSTATS]\nIf enabled, writes out JSON resource usage statistics\nto\
    \ a file. The default location for this file is the\ncurrent working directory,\
    \ but an absolute path can\nalso be passed to specify where this file should be\n\
    written. This options only applies when using scalable\nbatch systems."
  type: File
  outputBinding:
    glob: $(inputs.in_cluster_stats)
- id: out_no_move_exports
  doc: "When using a filesystem based job store, output files\nare by default moved\
    \ to the output directory, and a\nsymlink to the moved exported file is created\
    \ at the\ninitial location. Specifying this option instead\ncopies the files into\
    \ the output directory. Applies to\nfilesystem-based job stores only."
  type: File
  outputBinding:
    glob: $(inputs.in_no_move_exports)
- id: out_write_logs
  doc: "[WRITELOGS]\nWrite worker logs received by the leader into their\nown files\
    \ at the specified path. Any non-empty\nstandard output and error from failed\
    \ batch system\njobs will also be written into files at this path. The\ncurrent\
    \ working directory will be used if a path is\nnot specified explicitly. Note:\
    \ By default only the\nlogs of failed jobs are returned to leader. Set log\nlevel\
    \ to 'debug' or enable '--writeLogsFromAllJobs' to\nget logs back from successful\
    \ jobs, and adjust\n'maxLogFileSize' to control the truncation limit for\nworker\
    \ logs."
  type: File
  outputBinding:
    glob: $(inputs.in_write_logs)
cwlVersion: v1.1
baseCommand:
- toil-cwl-runner
