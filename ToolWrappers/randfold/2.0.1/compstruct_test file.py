from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Compstruct_Test_File_V0_1_0 = CommandToolBuilder(tool="compstruct_test file", base_command=["compstruct", "test file"], inputs=[ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_comp_struct", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_trusted_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_test_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compstruct_Test_File_V0_1_0().translate("wdl", allow_empty_container=True)

