from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Conus_Fold_Ry3_V0_1_0 = CommandToolBuilder(tool="conus_fold_RY3", base_command=["conus_fold", "RY3"], inputs=[ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_conus_fold", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file_in", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Conus_Fold_Ry3_V0_1_0().translate("wdl", allow_empty_container=True)

