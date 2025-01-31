from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Parsec_Histories_Delete_History_V0_1_0 = CommandToolBuilder(tool="parsec_histories_delete_history", base_command=["parsec", "histories", "delete_history"], inputs=[ToolInput(tag="in_purge", input_type=Boolean(optional=True), prefix="--purge", doc=InputDocumentation(doc="if ``True``, also purge (permanently delete) the history")), ToolInput(tag="in_the", input_type=String(), position=0, doc=InputDocumentation(doc="history was marked as deleted), ``purged`` (if"))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Histories_Delete_History_V0_1_0().translate("wdl")

