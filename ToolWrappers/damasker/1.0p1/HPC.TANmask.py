from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Hpc_Tanmask_V0_1_0 = CommandToolBuilder(tool="HPC.TANmask", base_command=["HPC.TANmask"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hpc_Tanmask_V0_1_0().translate("wdl", allow_empty_container=True)

