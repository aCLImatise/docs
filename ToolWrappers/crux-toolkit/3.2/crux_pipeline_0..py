from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Crux_Pipeline_0__V0_1_0 = CommandToolBuilder(tool="crux_pipeline_0.", base_command=["crux", "pipeline", "0."], inputs=[ToolInput(tag="in_crux", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pipeline", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_mass_spectra", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crux_Pipeline_0__V0_1_0().translate("wdl", allow_empty_container=True)

