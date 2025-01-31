from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Pyega3_Fetch_V0_1_0 = CommandToolBuilder(tool="pyega3_fetch", base_command=["pyega3", "fetch"], inputs=[ToolInput(tag="in_reference_name", input_type=Int(optional=True), prefix="--reference-name", doc=InputDocumentation(doc="The reference sequence name, for example 'chr1', '1',\nor 'chrX'. If unspecified, all data is returned.")), ToolInput(tag="in_reference_md_five", input_type=Int(optional=True), prefix="--reference-md5", doc=InputDocumentation(doc="The MD5 checksum uniquely representing the requested\nreference sequence as a lower-case hexadecimal string,\ncalculated as the MD5 of the upper-case sequence\nexcluding all whitespace characters.")), ToolInput(tag="in_start", input_type=Int(optional=True), prefix="--start", doc=InputDocumentation(doc="The start position of the range on the reference,\n0-based, inclusive. If specified, reference-name or\nreference-md5 must also be specified.")), ToolInput(tag="in_end", input_type=Int(optional=True), prefix="--end", doc=InputDocumentation(doc="The end position of the range on the reference,\n0-based exclusive. If specified, reference-name or\nreference-md5 must also be specified.")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="The format of data to request.")), ToolInput(tag="in_max_retries", input_type=Int(optional=True), prefix="--max-retries", doc=InputDocumentation(doc="The maximum number of times to retry a failed\ntransfer. Any negative number means infinite number of\nretries.")), ToolInput(tag="in_retry_wait", input_type=Int(optional=True), prefix="--retry-wait", doc=InputDocumentation(doc="The number of seconds to wait before retrying a failed\ntransfer.")), ToolInput(tag="in_save_to", input_type=File(optional=True), prefix="--saveto", doc=InputDocumentation(doc="[SAVETO]     Output file(for files)/output dir(for datasets)"))], outputs=[ToolOutput(tag="out_save_to", output_type=File(optional=True), selector=InputSelector(input_to_select="in_save_to", type_hint=File()), doc=OutputDocumentation(doc="[SAVETO]     Output file(for files)/output dir(for datasets)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyega3_Fetch_V0_1_0().translate("wdl", allow_empty_container=True)

