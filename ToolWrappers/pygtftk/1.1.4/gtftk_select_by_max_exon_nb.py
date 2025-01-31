from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Gtftk_Select_By_Max_Exon_Nb_V0_1_0 = CommandToolBuilder(tool="gtftk_select_by_max_exon_nb", base_command=["gtftk", "select_by_max_exon_nb"], inputs=[ToolInput(tag="in_input_file", input_type=Boolean(optional=True), prefix="--inputfile", doc=InputDocumentation(doc="Path to the GTF file. Default to STDIN (default: <stdin>)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--outputfile", doc=InputDocumentation(doc="Output file. (default: <stdout>)")), ToolInput(tag="in_verbosity", input_type=Boolean(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Set output verbosity ([0-3]). (default: 0)")), ToolInput(tag="in_no_date", input_type=File(optional=True), prefix="--no-date", doc=InputDocumentation(doc="Do not add date to output file names. (default: False)")), ToolInput(tag="in_add_chr", input_type=Boolean(optional=True), prefix="--add-chr", doc=InputDocumentation(doc="Add 'chr' to chromosome names before printing output. (default: False)")), ToolInput(tag="in_tmp_dir", input_type=Boolean(optional=True), prefix="--tmp-dir", doc=InputDocumentation(doc="Keep all temporary files into this folder. (default: None)")), ToolInput(tag="in_keep_all", input_type=Boolean(optional=True), prefix="--keep-all", doc=InputDocumentation(doc="Try to keep all temporary files even if process does not terminate normally. (default: False)")), ToolInput(tag="in_logger_file", input_type=Boolean(optional=True), prefix="--logger-file", doc=InputDocumentation(doc="Stores the arguments passed to the command into a file. (default: None)")), ToolInput(tag="in_write_message_to_file", input_type=Boolean(optional=True), prefix="--write-message-to-file", doc=InputDocumentation(doc="Store all message into a file. (default: None)"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file. (default: <stdout>)")), ToolOutput(tag="out_no_date", output_type=File(optional=True), selector=InputSelector(input_to_select="in_no_date", type_hint=File()), doc=OutputDocumentation(doc="Do not add date to output file names. (default: False)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gtftk_Select_By_Max_Exon_Nb_V0_1_0().translate("wdl", allow_empty_container=True)

