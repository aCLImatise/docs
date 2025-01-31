from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Dsh_Extract_Fastq_V0_1_0 = CommandToolBuilder(tool="dsh_extract_fastq", base_command=["dsh-extract-fastq"], inputs=[ToolInput(tag="in_about", input_type=Boolean(optional=True), prefix="--about", doc=InputDocumentation(doc="display about message [optional]")), ToolInput(tag="in_input_fast_q_file", input_type=Boolean(optional=True), prefix="--input-fastq-file", doc=InputDocumentation(doc="[class java.io.File]  input FASTQ file, default stdin [optional]")), ToolInput(tag="in_output_fast_q_file", input_type=File(optional=True), prefix="--output-fastq-file", doc=InputDocumentation(doc="[class java.io.File]  output FASTQ file, default stdout [optional]")), ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="--name", doc=InputDocumentation(doc="[class java.lang.String]  exact sequence name to match [optional]")), ToolInput(tag="in_description", input_type=Boolean(optional=True), prefix="--description", doc=InputDocumentation(doc="[class java.lang.String]  FASTQ description regex pattern to match [optional]")), ToolInput(tag="in_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_fast_q_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fast_q_file", type_hint=File()), doc=OutputDocumentation(doc="[class java.io.File]  output FASTQ file, default stdout [optional]"))], container="quay.io/biocontainers/dsh-bio:2.0.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dsh_Extract_Fastq_V0_1_0().translate("wdl")

