from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Reverse_Bed_Bed_Out_V0_1_0 = CommandToolBuilder(tool="reverse_bed_bed_out", base_command=["reverse_bed", "bed_out"], inputs=[ToolInput(tag="in_reverse_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_in", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_fast_a", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_out", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reverse_Bed_Bed_Out_V0_1_0().translate("wdl", allow_empty_container=True)

