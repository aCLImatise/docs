from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bam2Fasta_V0_1_0 = CommandToolBuilder(tool="bam2fasta", base_command=["bam2fasta"], inputs=[ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

