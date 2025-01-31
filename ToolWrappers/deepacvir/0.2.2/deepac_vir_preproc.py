from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Deepac_Vir_Preproc_V0_1_0 = CommandToolBuilder(tool="deepac_vir_preproc", base_command=["deepac-vir", "preproc"], inputs=[ToolInput(tag="in_config", input_type=String(), position=0, doc=InputDocumentation(doc="Preprocessing config file."))], outputs=[], container="quay.io/biocontainers/deepacvir:0.2.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Vir_Preproc_V0_1_0().translate("wdl")

