from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Vcfcommonsamples_V0_1_0 = CommandToolBuilder(tool="vcfcommonsamples", base_command=["vcfcommonsamples"], inputs=[ToolInput(tag="in_vcf_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vcfcommonsamples_V0_1_0().translate("wdl")

