from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gvf_Iit_V0_1_0 = CommandToolBuilder(tool="gvf_iit", base_command=["gvf_iit"], inputs=[ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gmap:2021.03.08--pl5262h36cd882_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gvf_Iit_V0_1_0().translate("wdl")

