from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Facount_Count_V0_1_0 = CommandToolBuilder(tool="faCount_count", base_command=["faCount", "count"], inputs=[ToolInput(tag="in_not_valid_option", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="not a valid option"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Facount_Count_V0_1_0().translate("wdl", allow_empty_container=True)

