from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsedb_Py_Sequences_V0_1_0 = CommandToolBuilder(tool="ParseDb.py_sequences", base_command=["ParseDb.py", "sequences"], inputs=[ToolInput(tag="in_parsed_b_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/changeo:1.0.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsedb_Py_Sequences_V0_1_0().translate("wdl")

