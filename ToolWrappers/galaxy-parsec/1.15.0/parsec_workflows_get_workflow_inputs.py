from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Workflows_Get_Workflow_Inputs_V0_1_0 = CommandToolBuilder(tool="parsec_workflows_get_workflow_inputs", base_command=["parsec", "workflows", "get_workflow_inputs"], inputs=[ToolInput(tag="in_workflow_id", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_label", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Workflows_Get_Workflow_Inputs_V0_1_0().translate("wdl")

