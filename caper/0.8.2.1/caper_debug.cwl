class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/caper_debug.cwl
inputs:
- id: dry_run
  doc: Caper does not take any action.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: debug
  doc: Prints all logs >= DEBUG level
  type: boolean
  inputBinding:
    prefix: --debug
- id: show_completed_task
  doc: Show information about completed tasks.
  type: boolean
  inputBinding:
    prefix: --show-completed-task
- id: port
  doc: Port for Caper server
  type: string
  inputBinding:
    prefix: --port
- id: ip
  doc: IP address for Caper server
  type: string
  inputBinding:
    prefix: --ip
- id: no_server_heartbeat
  doc: Disable server heartbeat file.
  type: boolean
  inputBinding:
    prefix: --no-server-heartbeat
- id: server_heartbeat_file
  doc: Heartbeat file for Caper clients to get IP and port of a server
  type: string
  inputBinding:
    prefix: --server-heartbeat-file
- id: server_heartbeat_timeout
  doc: Timeout for a heartbeat file in Milliseconds. A heartbeat file older than this
    interval will be ignored.
  type: string
  inputBinding:
    prefix: --server-heartbeat-timeout
- id: wf_id_or_label
  doc: List of workflow IDs to find matching workflows to commit a specified action
    (list, metadata and abort). Wildcards (* and ?) are allowed.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- caper
- debug
