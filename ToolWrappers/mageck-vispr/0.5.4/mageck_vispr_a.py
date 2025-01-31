from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mageck_Vispr_A_V0_1_0 = CommandToolBuilder(tool="mageck_vispr_a", base_command=["mageck-vispr", "a"], inputs=[ToolInput(tag="in_mage_ck_vis_pr", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_is", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_comprehensive", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_quality", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_control", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mageck_Vispr_A_V0_1_0().translate("wdl", allow_empty_container=True)

