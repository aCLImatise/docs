from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Mendelscan_Rhro_V0_1_0 = CommandToolBuilder(tool="mendelscan_rhro", base_command=["mendelscan", "rhro"], inputs=[ToolInput(tag="in_ped_file", input_type=Boolean(optional=True), prefix="--ped-file", doc=InputDocumentation(doc="Pedigree file in 6-column tab-delimited format")), ToolInput(tag="in_centromere_file", input_type=File(optional=True), prefix="--centromere-file", doc=InputDocumentation(doc="A tab-delimited, BED-like file indicating centromere locations by chromosome    --output-file   Output file to contain informative variants")), ToolInput(tag="in_output_windows", input_type=File(optional=True), prefix="--output-windows", doc=InputDocumentation(doc="Output file to contain RHRO windows. Otherwise they print to STDOUT")), ToolInput(tag="in_inheritance", input_type=Boolean(optional=True), prefix="--inheritance", doc=InputDocumentation(doc="Presumed model of inheritance: dominant, recessive, x-linked [dominant]")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_rh_ro", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_centromere_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_centromere_file", type_hint=File()), doc=OutputDocumentation(doc="A tab-delimited, BED-like file indicating centromere locations by chromosome    --output-file   Output file to contain informative variants")), ToolOutput(tag="out_output_windows", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_windows", type_hint=File()), doc=OutputDocumentation(doc="Output file to contain RHRO windows. Otherwise they print to STDOUT"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mendelscan_Rhro_V0_1_0().translate("wdl", allow_empty_container=True)

