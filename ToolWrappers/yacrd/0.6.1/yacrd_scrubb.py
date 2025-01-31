from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Yacrd_Scrubb_V0_1_0 = CommandToolBuilder(tool="yacrd_scrubb", base_command=["yacrd", "scrubb"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="path to sequence input (fasta|fastq) compression is autodetect (none|gzip|bzip2|lzma)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="path to output file, format and compression of input is preserved"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Yacrd_Scrubb_V0_1_0().translate("wdl", allow_empty_container=True)

