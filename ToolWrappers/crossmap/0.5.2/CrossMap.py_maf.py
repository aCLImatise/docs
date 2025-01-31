from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Crossmap_Py_Maf_V0_1_0 = CommandToolBuilder(tool="CrossMap.py_maf", base_command=["CrossMap.py", "maf"], inputs=[ToolInput(tag="in_crossmap_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="maf       hg19ToHg38.over.chain.gz  test.hg19.maf  hg38.fa  GRCh38"))], outputs=[], container="quay.io/biocontainers/crossmap:0.5.2--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crossmap_Py_Maf_V0_1_0().translate("wdl")

