from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bwa_Mem2_Index_V0_1_0 = CommandToolBuilder(tool="bwa_mem2_index", base_command=["bwa-mem2", "index"], inputs=[ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bwa_Mem2_Index_V0_1_0().translate("wdl", allow_empty_container=True)

