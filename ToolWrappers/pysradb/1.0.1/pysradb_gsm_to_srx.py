from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Pysradb_Gsm_To_Srx_V0_1_0 = CommandToolBuilder(tool="pysradb_gsm_to_srx", base_command=["pysradb", "gsm-to-srx"], inputs=[ToolInput(tag="in_desc", input_type=Boolean(optional=True), prefix="--desc", doc=InputDocumentation(doc="Should sample_attribute be included")), ToolInput(tag="in_detailed", input_type=Boolean(optional=True), prefix="--detailed", doc=InputDocumentation(doc="Output additional columns: [experiment_accession (SRX),\nsample_accession (SRS), run_accession (SRR),\nexperiment_alias (GSM), sample_alias (GSM), run_alias\n(GSM_r), study_alias (GSE)]")), ToolInput(tag="in_expand", input_type=Boolean(optional=True), prefix="--expand", doc=InputDocumentation(doc="Should sample_attribute be expanded")), ToolInput(tag="in_save_to", input_type=File(optional=True), prefix="--saveto", doc=InputDocumentation(doc="Save output to file")), ToolInput(tag="in_gsm_ids", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_save_to", output_type=File(optional=True), selector=InputSelector(input_to_select="in_save_to", type_hint=File()), doc=OutputDocumentation(doc="Save output to file"))], container="quay.io/biocontainers/pysradb:1.0.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pysradb_Gsm_To_Srx_V0_1_0().translate("wdl")

