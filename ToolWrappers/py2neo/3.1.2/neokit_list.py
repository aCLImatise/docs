from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Neokit_List_V0_1_0 = CommandToolBuilder(tool="neokit_list", base_command=["neokit", "list"], inputs=[ToolInput(tag="in_list", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Neokit_List_V0_1_0().translate("wdl", allow_empty_container=True)

