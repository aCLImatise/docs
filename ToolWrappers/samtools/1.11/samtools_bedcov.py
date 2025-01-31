from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File

Samtools_Bedcov_V0_1_0 = CommandToolBuilder(tool="samtools_bedcov", base_command=["samtools", "bedcov"], inputs=[ToolInput(tag="in_mapping_quality_threshold", input_type=Int(optional=True), prefix="-Q", doc=InputDocumentation(doc="mapping quality threshold [0]")), ToolInput(tag="in_use_customized_files", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc="use customized index files")), ToolInput(tag="in_remove_specified_flags", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="remove the specified flags from the set used to filter out reads")), ToolInput(tag="in_add_specified_flags", input_type=Int(optional=True), prefix="-G", doc=InputDocumentation(doc="add the specified flags to the set used to filter out reads\nThe default set is UNMAP,SECONDARY,QCFAIL,DUP or 0x704      -j                  do not include deletions (D) and ref skips (N) in bedcov computation")), ToolInput(tag="in_depth_threshold_number", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="depth threshold. Number of reference bases with coverage above and                          including this value will be displayed in a separate column")), ToolInput(tag="in_input_fmt_option", input_type=File(optional=True), prefix="--input-fmt-option", doc=InputDocumentation(doc="[=VAL]\nSpecify a single input file format option in the form\nof OPTION or OPTION=VALUE")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference sequence FASTA FILE [null]")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Set level of verbosity\n")), ToolInput(tag="in_in_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_one_dot_bam", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/samtools:1.11--h6270b1f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Bedcov_V0_1_0().translate("wdl")

