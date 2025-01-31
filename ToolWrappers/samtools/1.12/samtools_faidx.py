from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Samtools_Faidx_V0_1_0 = CommandToolBuilder(tool="samtools_faidx", base_command=["samtools", "faidx"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write FASTA to file.")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="Length of FASTA sequence line. [60]")), ToolInput(tag="in_continue", input_type=Boolean(optional=True), prefix="--continue", doc=InputDocumentation(doc="Continue after trying to retrieve missing region.")), ToolInput(tag="in_region_file", input_type=File(optional=True), prefix="--region-file", doc=InputDocumentation(doc="File of regions.  Format is chr:from-to. One per line.")), ToolInput(tag="in_reverse_complement", input_type=String(optional=True), prefix="--reverse-complement", doc=InputDocumentation(doc="complement sequences.")), ToolInput(tag="in_mark_strand", input_type=String(optional=True), prefix="--mark-strand", doc=InputDocumentation(doc="Add strand indicator to sequence name\nTYPE = rc   for /rc on negative strand (default)\nno   for no strand indicator\nsign for (+) / (-)\ncustom,<pos>,<neg> for custom indicator")), ToolInput(tag="in_fai_idx", input_type=Boolean(optional=True), prefix="--fai-idx", doc=InputDocumentation(doc="FILE  name of the index file (default file.fa.fai).")), ToolInput(tag="in_gz_i_idx", input_type=Boolean(optional=True), prefix="--gzi-idx", doc=InputDocumentation(doc="FILE  name of compressed file index (default file.fa.gz.gzi).")), ToolInput(tag="in_fast_q", input_type=Boolean(optional=True), prefix="--fastq", doc=InputDocumentation(doc="File and index in FASTQ format.")), ToolInput(tag="in_filed_otf_a_vertical_line_file_dot_fado_tgz", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/samtools:1.12--hd5e65b6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Faidx_V0_1_0().translate("wdl")

