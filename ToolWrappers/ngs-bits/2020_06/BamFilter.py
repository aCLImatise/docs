from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Bamfilter_V0_1_0 = CommandToolBuilder(tool="BamFilter", base_command=["BamFilter"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input BAM file.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output BAM file.")), ToolInput(tag="in_min_mq", input_type=Int(optional=True), prefix="-minMQ", doc=InputDocumentation(doc="Minimum mapping quality.\nDefault value: '30'")), ToolInput(tag="in_max_mm", input_type=Int(optional=True), prefix="-maxMM", doc=InputDocumentation(doc="Maximum number of mismatches in aligned read, -1 to disable.\nDefault value: '4'")), ToolInput(tag="in_max_gap", input_type=Int(optional=True), prefix="-maxGap", doc=InputDocumentation(doc="Maximum number of gaps (indels) in aligned read, -1 to disable.\nDefault value: '1'")), ToolInput(tag="in_mind_up", input_type=Int(optional=True), prefix="-minDup", doc=InputDocumentation(doc="Minimum number of duplicates.\nDefault value: '0'")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output BAM file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamfilter_V0_1_0().translate("wdl", allow_empty_container=True)

