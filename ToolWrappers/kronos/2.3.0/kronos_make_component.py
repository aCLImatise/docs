from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Kronos_Make_Component_V0_1_0 = CommandToolBuilder(tool="kronos_make_component", base_command=["kronos", "make_component"], inputs=[ToolInput(tag="in_component_name", input_type=String(), position=0, doc=InputDocumentation(doc="a name for the component to be generated"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kronos_Make_Component_V0_1_0().translate("wdl", allow_empty_container=True)

