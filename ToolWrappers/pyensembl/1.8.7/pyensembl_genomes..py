from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pyensembl_Genomes__V0_1_0 = CommandToolBuilder(tool="pyensembl_genomes.", base_command=["pyensembl", "genomes."], inputs=[ToolInput(tag="in_manipulate", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_py_ensembl", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyensembl_Genomes__V0_1_0().translate("wdl", allow_empty_container=True)

