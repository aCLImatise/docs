from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pmxmutate_V0_1_0 = CommandToolBuilder(tool="pmxmutate", base_command=["pmxmutate"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_input_b_structure_path", input_type=File(optional=True), prefix="--input_b_structure_path", doc=InputDocumentation(doc="Path to the mutated input structure file")), ToolInput(tag="in_input_structure_path", input_type=File(optional=True), prefix="--input_structure_path", doc=InputDocumentation(doc="Path to the input structure file")), ToolInput(tag="in_output_structure_path", input_type=File(optional=True), prefix="--output_structure_path", doc=InputDocumentation(doc="Path to the output structure file\n"))], outputs=[ToolOutput(tag="out_output_structure_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_structure_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the output structure file\n"))], container="quay.io/biocontainers/biobb_pmx:3.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pmxmutate_V0_1_0().translate("wdl")

