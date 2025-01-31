from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Coverm_Genome_V0_1_0 = CommandToolBuilder(tool="coverm_genome", base_command=["coverm", "genome"], inputs=[ToolInput(tag="in_coupled", input_type=String(optional=True), prefix="--coupled", doc=InputDocumentation(doc="")), ToolInput(tag="in_contig_end_exclusion", input_type=String(optional=True), prefix="--contig-end-exclusion", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/coverm:0.6.0--hc216eb9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coverm_Genome_V0_1_0().translate("wdl")

