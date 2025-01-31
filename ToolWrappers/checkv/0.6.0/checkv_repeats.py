from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Checkv_Repeats_V0_1_0 = CommandToolBuilder(tool="checkv_repeats", base_command=["checkv", "repeats"], inputs=[ToolInput(tag="in_min_tr_len", input_type=Int(optional=True), prefix="--min_tr_len", doc=InputDocumentation(doc="Min length of TR")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Suppress logging messages")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Input viral sequences in FASTA format")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Output directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkv_Repeats_V0_1_0().translate("wdl", allow_empty_container=True)

