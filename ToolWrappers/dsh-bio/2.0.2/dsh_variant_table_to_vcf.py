from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Dsh_Variant_Table_To_Vcf_V0_1_0 = CommandToolBuilder(tool="dsh_variant_table_to_vcf", base_command=["dsh-variant-table-to-vcf"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_input_variant_table_file", input_type=Boolean(optional=True), prefix="--input-variant-table-file", doc=InputDocumentation(doc="[class java.io.File]  input Ensembl variant table file, default stdin [optional]")), ToolInput(tag="in_output_vcf_file", input_type=File(optional=True), prefix="--output-vcf-file", doc=InputDocumentation(doc="[class java.io.File]  output VCF file, default stdout [optional]")), ToolInput(tag="in_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_vcf_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_vcf_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output VCF file, default stdout [optional]"))], container="quay.io/biocontainers/dsh-bio:2.0.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Variant_Table_To_Vcf_V0_1_0().translate("wdl")

