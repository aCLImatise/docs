from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Organizations_Add_Iam_Policy_Binding_V0_1_0 = CommandToolBuilder(tool="gcloud_organizations_add_iam_policy_binding", base_command=["gcloud", "organizations", "add-iam-policy-binding"], inputs=[ToolInput(tag="in_role", input_type=String(optional=True), prefix="--role", doc=InputDocumentation(doc="")), ToolInput(tag="in_member", input_type=String(optional=True), prefix="--member", doc=InputDocumentation(doc="")), ToolInput(tag="in_organization_id", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_optional", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_flags", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Organizations_Add_Iam_Policy_Binding_V0_1_0().translate("wdl", allow_empty_container=True)

