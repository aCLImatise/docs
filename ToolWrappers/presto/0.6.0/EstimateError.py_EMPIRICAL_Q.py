from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Estimateerror_Py_Empirical_Q_V0_1_0 = CommandToolBuilder(tool="EstimateError.py_EMPIRICAL_Q", base_command=["EstimateError.py", "EMPIRICAL_Q"], inputs=[ToolInput(tag="in_estimate_error_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Estimateerror_Py_Empirical_Q_V0_1_0().translate("wdl", allow_empty_container=True)

