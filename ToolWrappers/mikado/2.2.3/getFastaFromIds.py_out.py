from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Getfastafromids_Py_Out_V0_1_0 = CommandToolBuilder(tool="getFastaFromIds.py_out", base_command=["getFastaFromIds.py", "out"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_get_fasta_from_ids_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_list", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mikado:2.2.3--py38h6ed170a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getfastafromids_Py_Out_V0_1_0().translate("wdl")

