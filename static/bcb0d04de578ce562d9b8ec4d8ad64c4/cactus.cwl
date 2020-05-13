class: CommandLineTool
id: cactus.cwl
inputs:
- id: seq_file
  doc: Seq file
  type: string
  inputBinding:
    position: 0
- id: output_hal
  doc: Output HAL file
  type: string
  inputBinding:
    position: 1
- id: job_store
  doc: 'The location of the job store for the workflow. A job store holds persistent
    information about the jobs and files in a workflow. If the workflow is run with
    a distributed batch system, the job store must be accessible by all worker nodes.
    Depending on the desired job store implementation, the location should be formatted
    according to one of the following schemes: file:<path> where <path> points to
    a directory on the file systen aws:<region>:<prefix> where <region> is the name
    of an AWS region like us- west-2 and <prefix> will be prepended to the names of
    any top-level AWS resources in use by job store, e.g. S3 buckets. azure:<account>:<prefix>
    google:<project_id>:<prefix> TODO: explain For backwards compatibility, you may
    also specify ./foo (equivalent to file:./foo or just file:foo) or /bar (equivalent
    to file:/bar).'
  type: string
  inputBinding:
    position: 0
- id: experiment
  doc: The file containing a link to the experiment parameters
  type: string
  inputBinding:
    prefix: --experiment
- id: build_avg_s
  doc: Build trees
  type: boolean
  inputBinding:
    prefix: --buildAvgs
- id: build_reference
  doc: Creates a reference ordering for the flowers
  type: boolean
  inputBinding:
    prefix: --buildReference
- id: build_hal
  doc: Build a hal file
  type: boolean
  inputBinding:
    prefix: --buildHal
- id: build_fast_a
  doc: Build a fasta file of the input sequences (and reference sequence, used with
    hal output)
  type: boolean
  inputBinding:
    prefix: --buildFasta
- id: intermediate_results_url
  doc: URL prefix to save intermediate results like DB dumps to (e.g. prefix-dump-caf,
    prefix-dump-avg, etc.)
  type: long
  inputBinding:
    prefix: --intermediateResultsUrl
- id: database
  doc: 'Database type: tokyo_cabinet or kyoto_tycoon [default: kyoto_tycoon]'
  type: string
  inputBinding:
    prefix: --database
- id: config_file
  doc: Specify cactus configuration file
  type: string
  inputBinding:
    prefix: --configFile
- id: root
  doc: Name of ancestral node (which must appear in NEWICK tree in <seqfile>) to use
    as a root for the alignment. Any genomes not below this node in the tree may be
    used as outgroups but will never appear in the output. If no root is specifed
    then the root of the tree is used.
  type: string
  inputBinding:
    prefix: --root
- id: latest
  doc: Use the latest version of the docker container rather than pulling one matching
    this version of cactus
  type: boolean
  inputBinding:
    prefix: --latest
- id: container_image
  doc: Use the the specified pre-built containter image rather than pulling one from
    quay.io
  type: string
  inputBinding:
    prefix: --containerImage
- id: binaries_mode
  doc: The way to run the Cactus binaries
  type: string
  inputBinding:
    prefix: --binariesMode
- id: logoff
  doc: Same as --logCritical
  type: boolean
  inputBinding:
    prefix: --logOff
- id: log_critical
  doc: Turn on logging at level CRITICAL and above. (default is INFO)
  type: boolean
  inputBinding:
    prefix: --logCritical
- id: log_error
  doc: Turn on logging at level ERROR and above. (default is INFO)
  type: boolean
  inputBinding:
    prefix: --logError
- id: log_warning
  doc: Turn on logging at level WARNING and above. (default is INFO)
  type: boolean
  inputBinding:
    prefix: --logWarning
- id: loginfo
  doc: Turn on logging at level INFO and above. (default is INFO)
  type: boolean
  inputBinding:
    prefix: --logInfo
- id: log_debug
  doc: Turn on logging at level DEBUG and above. (default is INFO)
  type: boolean
  inputBinding:
    prefix: --logDebug
- id: loglevel
  doc: Log at given level (may be either OFF (or CRITICAL), ERROR, WARN (or WARNING),
    INFO or DEBUG). (default is INFO)
  type: string
  inputBinding:
    prefix: --logLevel
- id: log_file
  doc: File to log in
  type: string
  inputBinding:
    prefix: --logFile
- id: rotating_logging
  doc: Turn on rotating logging, which prevents log files getting too big.
  type: boolean
  inputBinding:
    prefix: --rotatingLogging
- id: workdir
  doc: Absolute path to directory where temporary files generated during the Toil
    run should be placed. Temp files and folders will be placed in a directory toil-<workflowID>
    within workDir (The workflowID is generated by Toil and will be reported in the
    workflow logs. Default is determined by the variables (TMPDIR, TEMP, TMP) via
    mkdtemp. This directory needs to exist on all machines running jobs.
  type: string
  inputBinding:
    prefix: --workDir
- id: stats
  doc: Records statistics about the toil workflow to be used by 'toil stats'.
  type: boolean
  inputBinding:
    prefix: --stats
- id: clean
  doc: "Determines the deletion of the jobStore upon completion of the program. Choices:\
    \ 'always', 'onError','never', 'onSuccess'. The --stats option requires information\
    \ from the jobStore upon completion so the jobStore will never be deleted withthat\
    \ flag. If you wish to be able to restart the run, choose 'never' or 'onSuccess'.\
    \ Default is 'never' if stats is enabled, and 'onSuccess' otherwise"
  type: string
  inputBinding:
    prefix: --clean
- id: clean_workdir
  doc: "Determines deletion of temporary worker directory upon completion of a job.\
    \ Choices: 'always', 'never', 'onSuccess'. Default = always. WARNING: This option\
    \ should be changed for debugging only. Running a full pipeline with this option\
    \ could fill your disk with intermediate data."
  type: string
  inputBinding:
    prefix: --cleanWorkDir
- id: cluster_stats
  doc: '[CLUSTERSTATS] If enabled, writes out JSON resource usage statistics to a
    file. The default location for this file is the current working directory, but
    an absolute path can also be passed to specify where this file should be written.
    This options only applies when using scalable batch systems.'
  type: boolean
  inputBinding:
    prefix: --clusterStats
- id: restart
  doc: If --restart is specified then will attempt to restart existing workflow at
    the location pointed to by the --jobStore option. Will raise an exception if the
    workflow does not exist
  type: boolean
  inputBinding:
    prefix: --restart
- id: batch_system
  doc: The type of batch system to run the job(s) with, currently can be one of LSF,
    Mesos, Slurm, Torque, HTCondor, singleMachine, parasol, gridEngine'. default=singleMachine
  type: string
  inputBinding:
    prefix: --batchSystem
- id: disable_hot_deployment
  doc: Should hot-deployment of the user script be deactivated? If True, the user
    script/package should be present at the same location on all workers. default=false
  type: boolean
  inputBinding:
    prefix: --disableHotDeployment
- id: parasol_command
  doc: The name or path of the parasol program. Will be looked up on PATH unless it
    starts with a slashdefault=parasol
  type: string
  inputBinding:
    prefix: --parasolCommand
- id: parasol_max_batches
  doc: Maximum number of job batches the Parasol batch is allowed to create. One batch
    is created for jobs with a a unique set of resource requirements. default=1000
  type: string
  inputBinding:
    prefix: --parasolMaxBatches
- id: scale
  doc: A scaling factor to change the value of all submitted tasks's submitted cores.
    Used in singleMachine batch system. default=1
  type: string
  inputBinding:
    prefix: --scale
- id: link_imports
  doc: When using Toil's importFile function for staging, input files are copied to
    the job store. Specifying this option saves space by sym-linking imported files.
    As long as caching is enabled Toil will protect the file automatically by changing
    the permissions to read-only.
  type: boolean
  inputBinding:
    prefix: --linkImports
- id: mesos_master
  doc: 'The host and port of the Mesos master separated by colon. (default: 115.146.93.132:5050)'
  type: string
  inputBinding:
    prefix: --mesosMaster
- id: provisioner
  doc: The provisioner for cluster auto-scaling. The currently supported choices are'cgcloud'
    or 'aws'. The default is None.
  type: string
  inputBinding:
    prefix: --provisioner
- id: node_types
  doc: List of node types separated by commas. The syntax for each node type depends
    on the provisioner used. For the cgcloud and AWS provisioners this is the name
    of an EC2 instance type, optionally followed by a colon and the price in dollars
    to bid for a spot instance of that type, for example 'c3.8xlarge:0.42'.If no spot
    bid is specified, nodes of this type will be non- preemptable.It is acceptable
    to specify an instance as both preemptable and non-preemptable, including it twice
    in the list. In that case,preemptable nodes of that type will be preferred when
    creating new nodes once the maximum number of preemptable-nodes has beenreached.
  type: string
  inputBinding:
    prefix: --nodeTypes
- id: node_options
  doc: Options for provisioning the nodes. The syntax depends on the provisioner used.
    Neither the CGCloud nor the AWS provisioner support any node options.
  type: string
  inputBinding:
    prefix: --nodeOptions
- id: min_nodes
  doc: Mininum number of nodes of each type in the cluster, if using auto-scaling.
    This should be provided as a comma-separated list of the same length as the list
    of node types. default=0
  type: long
  inputBinding:
    prefix: --minNodes
- id: max_nodes
  doc: Maximum number of nodes of each type in the cluster, if using autoscaling,
    provided as a comma-separated list. The first value is used as a default if the
    list length is less than the number of nodeTypes. default=10
  type: long
  inputBinding:
    prefix: --maxNodes
- id: alpha_packing
  doc: The total number of nodes estimated to be required to compute the issued jobs
    is multiplied by the alpha packing parameter to produce the actual number of nodes
    requested. Values of this coefficient greater than one will tend to over provision
    and values less than one will under provision. default=0.8
  type: string
  inputBinding:
    prefix: --alphaPacking
- id: beta_inertia
  doc: A smoothing parameter to prevent unnecessary oscillations in the number of
    provisioned nodes. If the number of nodes is within the beta inertia of the currently
    provisioned number of nodes then no change is made to the number of requested
    nodes. default=1.2
  type: string
  inputBinding:
    prefix: --betaInertia
- id: scale_interval
  doc: The interval (seconds) between assessing if the scale of the cluster needs
    to change. default=30
  type: string
  inputBinding:
    prefix: --scaleInterval
- id: preempt_able_compensation
  doc: The preference of the autoscaler to replace preemptable nodes with non-preemptable
    nodes, when preemptable nodes cannot be started for some reason. Defaults to 0.0.
    This value must be between 0.0 and 1.0, inclusive. A value of 0.0 disables such
    compensation, a value of 0.5 compensates two missing preemptable nodes with a
    non-preemptable one. A value of 1.0 replaces every missing pre-emptable node with
    a non-preemptable one.
  type: string
  inputBinding:
    prefix: --preemptableCompensation
- id: node_storage
  doc: Specify the size of the root volume of worker nodes when they are launched
    in gigabytes. You may want to set this if your jobs require a lot of disk space.
    The default value is 50.
  type: string
  inputBinding:
    prefix: --nodeStorage
- id: metrics
  doc: Enable the prometheus/grafana dashboard for monitoring CPU/RAM usage, queue
    size, and issued jobs.
  type: boolean
  inputBinding:
    prefix: --metrics
- id: max_service_jobs
  doc: The maximum number of service jobs that can be run concurrently, excluding
    service jobs running on preemptable nodes. default=9223372036854775807
  type: long
  inputBinding:
    prefix: --maxServiceJobs
- id: max_preempt_able_service_jobs
  doc: The maximum number of service jobs that can run concurrently on preemptable
    nodes. default=9223372036854775807
  type: long
  inputBinding:
    prefix: --maxPreemptableServiceJobs
- id: deadlock_wait
  doc: The minimum number of seconds to observe the cluster stuck running only the
    same service jobs before throwing a deadlock exception. default=60
  type: string
  inputBinding:
    prefix: --deadlockWait
- id: state_polling_wait
  doc: Time, in seconds, to wait before doing a scheduler query for job state. Return
    cached results if within the waiting period.
  type: string
  inputBinding:
    prefix: --statePollingWait
- id: max_cores
  doc: The maximum number of CPU cores to request from the batch system at any one
    time. Standard suffixes like K, Ki, M, Mi, G or Gi are supported. Default is 8.0
    Ei
  type: long
  inputBinding:
    prefix: --maxCores
- id: max_memory
  doc: The maximum amount of memory to request from the batch system at any one time.
    Standard suffixes like K, Ki, M, Mi, G or Gi are supported. Default is 8.0 Ei
  type: long
  inputBinding:
    prefix: --maxMemory
- id: max_disk
  doc: The maximum amount of disk space to request from the batch system at any one
    time. Standard suffixes like K, Ki, M, Mi, G or Gi are supported. Default is 8.0
    Ei
  type: long
  inputBinding:
    prefix: --maxDisk
- id: retry_count
  doc: Number of times to retry a failing job before giving up and labeling job failed.
    default=1
  type: string
  inputBinding:
    prefix: --retryCount
- id: max_job_duration
  doc: Maximum runtime of a job (in seconds) before we kill it (this is a lower bound,
    and the actual time before killing the job may be longer). default=9223372036854775807
  type: long
  inputBinding:
    prefix: --maxJobDuration
- id: rescue_jobs_frequency
  doc: Period of time to wait (in seconds) between checking for missing/overlong jobs,
    that is jobs which get lost by the batch system. Expert parameter. default=3600
  type: string
  inputBinding:
    prefix: --rescueJobsFrequency
- id: disable_caching
  doc: Disables caching in the file store. This flag must be set to use a batch system
    that does not support caching such as Grid Engine, Parasol, LSF, or Slurm
  type: boolean
  inputBinding:
    prefix: --disableCaching
- id: max_log_file_size
  doc: The maximum size of a job log file to keep (in bytes), log files larger than
    this will be truncated to the last X bytes. Setting this option to zero will prevent
    any truncation. Setting this option to a negative value will truncate from the
    beginning.Default=62.5 K
  type: long
  inputBinding:
    prefix: --maxLogFileSize
- id: write_logs
  doc: "[WRITELOGS] Write worker logs received by the leader into their own files\
    \ at the specified path. The current working directory will be used if a path\
    \ is not specified explicitly. Note: By default only the logs of failed jobs are\
    \ returned to leader. Set log level to 'debug' to get logs back from successful\
    \ jobs, and adjust 'maxLogFileSize' to control the truncation limit for worker\
    \ logs."
  type: boolean
  inputBinding:
    prefix: --writeLogs
- id: write_logs_gzip
  doc: '[WRITELOGSGZIP] Identical to --writeLogs except the logs files are gzipped
    on the leader.'
  type: boolean
  inputBinding:
    prefix: --writeLogsGzip
- id: real_time_logging
  doc: Enable real-time logging from workers to masters
  type: boolean
  inputBinding:
    prefix: --realTimeLogging
- id: sse_key
  doc: Path to file containing 32 character key to be used for server-side encryption
    on awsJobStore or googleJobStore. SSE will not be used if this flag is not passed.
  type: string
  inputBinding:
    prefix: --sseKey
- id: cse_key
  doc: Path to file containing 256-bit key to be used for client-side encryption on
    azureJobStore. By default, no encryption is used.
  type: string
  inputBinding:
    prefix: --cseKey
- id: setenv
  doc: =VALUE or NAME, -e NAME=VALUE or NAME Set an environment variable early on
    in the worker. If VALUE is omitted, it will be looked up in the current environment.
    Independently of this option, the worker will try to emulate the leader's environment
    before running a job. Using this option, a variable can be injected into the worker
    process itself before it is started.
  type: string
  inputBinding:
    prefix: --setEnv
- id: service_polling_interval
  doc: Interval of time service jobs wait between polling for the existence of the
    keep-alive flag (defailt=60)
  type: string
  inputBinding:
    prefix: --servicePollingInterval
- id: debug_worker
  doc: Experimental no forking mode for local debugging. Specifically, workers are
    not forked and stderr/stdout are not redirected to the log.
  type: boolean
  inputBinding:
    prefix: --debugWorker
- id: bad_worker
  doc: For testing purposes randomly kill 'badWorker' proportion of jobs using SIGKILL,
    default=0.0
  type: string
  inputBinding:
    prefix: --badWorker
- id: bad_worker_fail_interval
  doc: When killing the job pick uniformly within the interval from 0.0 to 'badWorkerFailInterval'
    seconds after the worker starts, default=0.01
  type: string
  inputBinding:
    prefix: --badWorkerFailInterval
outputs: []
cwlVersion: v1.1
baseCommand:
- cactus
