from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Chewbbaca_Py_V0_1_0 = CommandToolBuilder(tool="chewBBACA.py", base_command=["chewBBACA.py"], inputs=[ToolInput(tag="in_module", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/chewbbaca:2.6.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chewbbaca_Py_V0_1_0().translate("wdl")

