from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bedtools_Bedtobam_V0_1_0 = CommandToolBuilder(tool="bedtools_bedtobam", base_command=["bedtools", "bedtobam"], inputs=[ToolInput(tag="in_mapq", input_type=Boolean(optional=True), prefix="-mapq", doc=InputDocumentation(doc="Set the mappinq quality for the BAM records.\n(INT) Default: 255")), ToolInput(tag="in_be_done_two", input_type=Boolean(optional=True), prefix="-bed12", doc=InputDocumentation(doc="The BED file is in BED12 format.  The BAM CIGAR\nstring will reflect BED 'blocks'.")), ToolInput(tag="in_ub_am", input_type=Boolean(optional=True), prefix="-ubam", doc=InputDocumentation(doc="Write uncompressed BAM output. Default writes compressed BAM.")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Bedtobam_V0_1_0().translate("wdl")

