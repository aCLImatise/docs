from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Alignsets_Py_Offsets_Forward_V0_1_0 = CommandToolBuilder(tool="AlignSets.py_offsets_forward", base_command=["AlignSets.py", "offsets-forward"], inputs=[ToolInput(tag="in_align_sets_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/presto:0.6.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alignsets_Py_Offsets_Forward_V0_1_0().translate("wdl")

