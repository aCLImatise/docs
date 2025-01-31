from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sam_To_Collapsed_Gff_Py_V0_1_0 = CommandToolBuilder(tool="sam_to_collapsed_gff.py", base_command=["sam_to_collapsed_gff.py"], inputs=[ToolInput(tag="in_convert", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sam", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_collapsed", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_format", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_sam_filename", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sam_To_Collapsed_Gff_Py_V0_1_0().translate("wdl")

