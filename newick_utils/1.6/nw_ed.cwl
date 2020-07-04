class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nw_ed.cwl
inputs:
- id: print_modified_tree
  doc: ': do not print the (possibly modified) tree at the end of the run  (modeled
    after sed -n)'
  type: boolean
  inputBinding:
    prefix: -n
- id: visit_tree_starting
  doc: ': visit tree in preorder (starting at root, and visiting a node before any
    of its descendants). Default is post-order (ends at root and visits a node after
    all its descendats).'
  type: boolean
  inputBinding:
    prefix: -r
- id: stop_processing_clade
  doc: ': stop processing a clade after the first match - that is, if a node matches,
    its descendants are not processed. Note: this option will automatically set -r,
    as it makes no sense in post-order.'
  type: boolean
  inputBinding:
    prefix: -o
- id: subtree_print_subtree
  doc: (Subtree) print subtree rooted at matching node
  type: string
  inputBinding:
    position: 0
- id: splice_out_splice
  doc: (splice Out) splice out node, and attach children to parent,  preserving branch
    lengths. This is useful for "opening" poorly supported nodes.
  type: string
  inputBinding:
    position: 1
- id: delete_node
  doc: Delete node
  type: string
  inputBinding:
    position: 2
- id: print_nodes_label
  doc: Print node's label
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_ed
