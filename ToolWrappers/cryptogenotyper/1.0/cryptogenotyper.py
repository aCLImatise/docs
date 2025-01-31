from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Cryptogenotyper_V0_1_0 = CommandToolBuilder(tool="cryptogenotyper", base_command=["cryptogenotyper"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turn on verbose logging [False].")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Path to directory with AB1 forward and reverse files\nOR path to a single AB1 file")), ToolInput(tag="in_marker", input_type=Int(optional=True), prefix="--marker", doc=InputDocumentation(doc="Name of the marker. Currently gp60 and 18S markers are\nsupported")), ToolInput(tag="in_seqtype", input_type=String(optional=True), prefix="--seqtype", doc=InputDocumentation(doc="Input sequences type. Select one option out of these\nthree: contig - both F and R sequences provided\nforward - forward only sequence provided reverse -\nreverse only sequence provided")), ToolInput(tag="in_forward_primer_name", input_type=Int(optional=True), prefix="--forwardprimername", doc=InputDocumentation(doc="Name of the forward primer to identify forward read\n(e.g. gp60F, SSUF)")), ToolInput(tag="in_reverse_primer_name", input_type=Int(optional=True), prefix="--reverseprimername", doc=InputDocumentation(doc="Name of the reverse primer to identify forward read\n(e.g. gp60R, SSUR)")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--outputprefix", doc=InputDocumentation(doc="Output name prefix for the results (e.g. test results\nin test_report.fa)")), ToolInput(tag="in_database_file", input_type=File(optional=True), prefix="--databasefile", doc=InputDocumentation(doc="Path to custom database reference FASTA file")), ToolInput(tag="in_noheader_line", input_type=Boolean(optional=True), prefix="--noheaderline", doc=InputDocumentation(doc="Display header on tab-delimited file [False]"))], outputs=[], container="quay.io/biocontainers/cryptogenotyper:1.0--py_3", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cryptogenotyper_V0_1_0().translate("wdl")

