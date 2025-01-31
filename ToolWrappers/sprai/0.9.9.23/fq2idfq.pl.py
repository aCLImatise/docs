from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fq2Idfq_Pl_V0_1_0 = CommandToolBuilder(tool="fq2idfq.pl", base_command=["fq2idfq.pl"], inputs=[ToolInput(tag="in_this", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fq", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fq2Idfq_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

