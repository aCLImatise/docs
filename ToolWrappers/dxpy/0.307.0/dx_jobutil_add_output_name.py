from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dx_Jobutil_Add_Output_Name_V0_1_0 = CommandToolBuilder(tool="dx_jobutil_add_output_name", base_command=["dx-jobutil-add-output", "name"], inputs=[ToolInput(tag="in_array", input_type=Boolean(optional=True), prefix="--array", doc=InputDocumentation(doc="")), ToolInput(tag="in_class", input_type=Boolean(optional=True), prefix="--class", doc=InputDocumentation(doc="")), ToolInput(tag="in_dx_job_util_add_output", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_classname", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_value", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Jobutil_Add_Output_Name_V0_1_0().translate("wdl")

