from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Cnvkit_Py_Import_Theta_Tumor_Cns_V0_1_0 = CommandToolBuilder(tool="cnvkit.py_import_theta_tumor_cns", base_command=["cnvkit.py", "import-theta", "tumor_cns"], inputs=[ToolInput(tag="in_d", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_ploidy", input_type=String(optional=True), prefix="--ploidy", doc=InputDocumentation(doc="")), ToolInput(tag="in_cnv_kit_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_import_theta", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Import_Theta_Tumor_Cns_V0_1_0().translate("wdl", allow_empty_container=True)

