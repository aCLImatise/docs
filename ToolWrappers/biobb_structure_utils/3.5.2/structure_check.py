from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Structure_Check_V0_1_0 = CommandToolBuilder(tool="structure_check", base_command=["structure_check"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_input_structure_path", input_type=File(optional=True), prefix="--input_structure_path", doc=InputDocumentation(doc="Input structure file path. Accepted formats: pdb.")), ToolInput(tag="in_output_summary_path", input_type=File(optional=True), prefix="--output_summary_path", doc=InputDocumentation(doc="Output summary checking results. Accepted formats: json.\n"))], outputs=[ToolOutput(tag="out_output_summary_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_summary_path", type_hint=File()), doc=OutputDocumentation(doc="Output summary checking results. Accepted formats: json.\n"))], container="quay.io/biocontainers/biobb_structure_utils:3.5.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Structure_Check_V0_1_0().translate("wdl")

