from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Wisecondorx_V0_1_0 = CommandToolBuilder(tool="WisecondorX", base_command=["WisecondorX"], inputs=[ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wisecondorx_V0_1_0().translate("wdl", allow_empty_container=True)

