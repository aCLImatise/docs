from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Bolt_Vcf_Stats_V0_1_0 = CommandToolBuilder(tool="bolt_vcf_stats", base_command=["bolt", "vcf", "stats"], inputs=[ToolInput(tag="in_file_path", input_type=File(optional=True), prefix="--filepath", doc=InputDocumentation(doc="a VCF file (*require)")), ToolInput(tag="in_genie", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_stats", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bolt_Vcf_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

