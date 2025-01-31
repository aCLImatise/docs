from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Pyatac_Sizes_V0_1_0 = CommandToolBuilder(tool="pyatac_sizes", base_command=["pyatac", "sizes"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="Aligned reads")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Only compute size distribution for fragment centered\nwithin regions in bed file")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="Basename for output")), ToolInput(tag="in_not_atac", input_type=Boolean(optional=True), prefix="--not_atac", doc=InputDocumentation(doc="Don't use atac offsets")), ToolInput(tag="in_lower", input_type=Int(optional=True), prefix="--lower", doc=InputDocumentation(doc="lower limit on insert size. Default is 0")), ToolInput(tag="in_upper", input_type=Int(optional=True), prefix="--upper", doc=InputDocumentation(doc="upper limit on insert size. Default is 500")), ToolInput(tag="in_no_plot", input_type=Boolean(optional=True), prefix="--no_plot", doc=InputDocumentation(doc="Don't plot output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyatac_Sizes_V0_1_0().translate("wdl", allow_empty_container=True)

