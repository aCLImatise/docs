from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Convertheaders_Py_Convert_Pass_V0_1_0 = CommandToolBuilder(tool="ConvertHeaders.py_convert_pass", base_command=["ConvertHeaders.py", "convert-pass"], inputs=[ToolInput(tag="in_convert_headers_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convertheaders_Py_Convert_Pass_V0_1_0().translate("wdl", allow_empty_container=True)

