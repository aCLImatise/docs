from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Scancel_Range_V0_1_0 = CommandToolBuilder(tool="scancel_range", base_command=["scancel-range"], inputs=[ToolInput(tag="in_at_call_aside", input_type=String(), position=0, doc=InputDocumentation(doc="File '/usr/local/lib/python3.6/site-packages/pkg_resources/__init__.py', line 3110, in _call_aside"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scancel_Range_V0_1_0().translate("wdl", allow_empty_container=True)

