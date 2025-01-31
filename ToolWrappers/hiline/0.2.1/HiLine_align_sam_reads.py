from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hiline_Align_Sam_Reads_V0_1_0 = CommandToolBuilder(tool="HiLine_align_sam_reads", base_command=["HiLine", "align-sam-reads"], inputs=[ToolInput(tag="in_no_rmd_ups", input_type=Boolean(optional=True), prefix="--no-rmdups", doc=InputDocumentation(doc="Run samtools mark_dup pipeline on alignment.\nDefault=rmdups")), ToolInput(tag="in_tag", input_type=String(optional=True), prefix="--tag", doc=InputDocumentation(doc="SAM tag(s) to append to reads.")), ToolInput(tag="in_no_trim", input_type=Boolean(optional=True), prefix="--no-trim", doc=InputDocumentation(doc="Run HiC read trimming, trim sections of reads that\nalign past restriction sites. Default=trim")), ToolInput(tag="in_bwa_one", input_type=Boolean(optional=True), prefix="--bwa1", doc=InputDocumentation(doc="Use bwa mem. Default=False")), ToolInput(tag="in_bwa_two", input_type=Boolean(optional=True), prefix="--bwa2", doc=InputDocumentation(doc="Use bwa-mem2. Default=True")), ToolInput(tag="in_minimap_two", input_type=Boolean(optional=True), prefix="--minimap2", doc=InputDocumentation(doc="Use minimap2. Default=False")), ToolInput(tag="in_reads", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/hiline:0.2.1--py38hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hiline_Align_Sam_Reads_V0_1_0().translate("wdl")

