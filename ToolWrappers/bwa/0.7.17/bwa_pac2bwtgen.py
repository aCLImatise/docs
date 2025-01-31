from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bwa_Pac2Bwtgen_V0_1_0 = CommandToolBuilder(tool="bwa_pac2bwtgen", base_command=["bwa", "pac2bwtgen"], inputs=[ToolInput(tag="in_bwt_gen", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_pac", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_bwt", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bwa_Pac2Bwtgen_V0_1_0().translate("wdl", allow_empty_container=True)

