from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pypgatk_Cli_Proteindb_V0_1_0 = CommandToolBuilder(tool="pypgatk_cli_proteindb", base_command=["pypgatk_cli", "proteindb"], inputs=[ToolInput(tag="in_p_ypg_atk_cli", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pypgatk:0.0.15--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pypgatk_Cli_Proteindb_V0_1_0().translate("wdl")

