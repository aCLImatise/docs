from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tadpipe_Sh_V0_1_0 = CommandToolBuilder(tool="tadpipe.sh", base_command=["tadpipe.sh"], inputs=[ToolInput(tag="in_in", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tadpipe_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

