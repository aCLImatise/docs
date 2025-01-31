from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tripaille_Db_Get_Dbs_V0_1_0 = CommandToolBuilder(tool="tripaille_db_get_dbs", base_command=["tripaille", "db", "get_dbs"], inputs=[ToolInput(tag="in_db_id", input_type=String(optional=True), prefix="--db_id", doc=InputDocumentation(doc="A db ID")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="filter on db name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Db_Get_Dbs_V0_1_0().translate("wdl", allow_empty_container=True)

