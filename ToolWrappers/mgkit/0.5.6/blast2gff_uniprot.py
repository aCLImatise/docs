from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int, Float

Blast2Gff_Uniprot_V0_1_0 = CommandToolBuilder(tool="blast2gff_uniprot", base_command=["blast2gff", "uniprot"], inputs=[ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Uniprot database used with BLAST  [default:\nUNIPROT-SP]")), ToolInput(tag="in_no_split", input_type=Boolean(optional=True), prefix="--no-split", doc=InputDocumentation(doc="if used, the script assumes that the sequence\nheader will be used as gene_id")), ToolInput(tag="in_fast_a_file", input_type=File(optional=True), prefix="--fasta-file", doc=InputDocumentation(doc="Optional FASTA file with the query sequences")), ToolInput(tag="in_db_quality", input_type=Int(optional=True), prefix="--db-quality", doc=InputDocumentation(doc="Quality of the DB used  [default: 10]")), ToolInput(tag="in_bit_score", input_type=Float(optional=True), prefix="--bitscore", doc=InputDocumentation(doc="Minimum bitscore to keep the annotation\n[default: 0.0]")), ToolInput(tag="in_attr_value", input_type=String(optional=True), prefix="--attr-value", doc=InputDocumentation(doc="Additional attribute and value to add to each\nannotation, in the form attr:value")), ToolInput(tag="in_feat_type", input_type=String(optional=True), prefix="--feat-type", doc=InputDocumentation(doc="Feature type to use in the GFF  [default: CDS]")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_blast_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blast2Gff_Uniprot_V0_1_0().translate("wdl")

