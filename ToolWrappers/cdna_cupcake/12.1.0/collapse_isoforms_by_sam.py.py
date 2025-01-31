from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Collapse_Isoforms_By_Sam_Py_V0_1_0 = CommandToolBuilder(tool="collapse_isoforms_by_sam.py", base_command=["collapse_isoforms_by_sam.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input FA/FQ filename")), ToolInput(tag="in_fq", input_type=Boolean(optional=True), prefix="--fq", doc=InputDocumentation(doc="Input is a fastq file (default is fasta)")), ToolInput(tag="in_sam", input_type=File(optional=True), prefix="--sam", doc=InputDocumentation(doc="Sorted GMAP SAM filename")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Output filename prefix")), ToolInput(tag="in_min_coverage", input_type=Int(optional=True), prefix="--min-coverage", doc=InputDocumentation(doc="Minimum alignment coverage (default: 0.99)")), ToolInput(tag="in_min_identity", input_type=Int(optional=True), prefix="--min-identity", doc=InputDocumentation(doc="Minimum alignment identity (default: 0.95)")), ToolInput(tag="in_max_fuzzy_junction", input_type=Int(optional=True), prefix="--max_fuzzy_junction", doc=InputDocumentation(doc="Max fuzzy junction dist (default: 5 bp)")), ToolInput(tag="in_max_five_diff", input_type=Int(optional=True), prefix="--max_5_diff", doc=InputDocumentation(doc="Maximum allowed 5' difference if on same exon\n(default: 1000 bp)")), ToolInput(tag="in_max_three_diff", input_type=Int(optional=True), prefix="--max_3_diff", doc=InputDocumentation(doc="Maximum allowed 3' difference if on same exon\n(default: 100 bp)")), ToolInput(tag="in_fl_nc_coverage", input_type=String(optional=True), prefix="--flnc_coverage", doc=InputDocumentation(doc="Minimum # of FLNC reads, only use this for aligned\nFLNC reads, otherwise results undefined!")), ToolInput(tag="in_dun_merge_five_shorter", input_type=Boolean(optional=True), prefix="--dun-merge-5-shorter", doc=InputDocumentation(doc="Don't collapse shorter 5' transcripts (default: turned\noff)\n"))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="Output filename prefix"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Collapse_Isoforms_By_Sam_Py_V0_1_0().translate("wdl", allow_empty_container=True)

