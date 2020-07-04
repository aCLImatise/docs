class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_dss_delete_subscription.cwl
inputs:
- id: uuid
  doc: A RFC4122-compliant ID for the subscription.
  type: string
  inputBinding:
    prefix: --uuid
- id: replica
  doc: Replica to delete from.
  type: string
  inputBinding:
    prefix: --replica
- id: subscription_type
  doc: type of subscriptions to fetch (elasticsearch or jmespath)
  type: string
  inputBinding:
    prefix: --subscription-type
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- delete-subscription
