from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nextflow_View_V0_1_0 = CommandToolBuilder(tool="nextflow_view", base_command=["nextflow", "view"], inputs=[ToolInput(tag="in_list_repository_contentdefault", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="List repository content\nDefault: false")), ToolInput(tag="in_hide_header_linedefault", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Hide header line\nDefault: false\n")), ToolInput(tag="in_view", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_project", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nextflow:20.10.0--hecda079_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextflow_View_V0_1_0().translate("wdl")

