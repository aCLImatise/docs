from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Fasta2Gsi_Pl_V0_1_0 = CommandToolBuilder(tool="fasta2gsi.pl", base_command=["fasta2gsi.pl"], inputs=[ToolInput(tag="in_help_dot_gsi", input_type=Int(optional=True), prefix="--help.gsi", doc=InputDocumentation(doc="0 sequence names."))], outputs=[], container="quay.io/biocontainers/snoscan:1.0--pl526h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta2Gsi_Pl_V0_1_0().translate("wdl")

