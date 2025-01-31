from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Segway_Args_V0_1_0 = CommandToolBuilder(tool="segway_args", base_command=["segway", "args"], inputs=[ToolInput(tag="in_segway", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_global_args", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/segway:3.0.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segway_Args_V0_1_0().translate("wdl")

