from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

_Dbxgcg_V0_1_0 = CommandToolBuilder(tool="_dbxgcg", base_command=["_dbxgcg"], inputs=[ToolInput(tag="in_id_format", input_type=Boolean(optional=True), prefix="-idformat", doc=InputDocumentation(doc="menu       [SWISS] Entry format (Values: EMBL (EMBL);\nSWISS (Swiss-Prot, SpTrEMBL, TrEMBLnew);\nGENBANK (Genbank, DDBJ); PIR (NBRF))")), ToolInput(tag="in_directory", input_type=Boolean(optional=True), prefix="-directory", doc=InputDocumentation(doc="directory  [.] Database directory")), ToolInput(tag="in_filenames", input_type=Boolean(optional=True), prefix="-filenames", doc=InputDocumentation(doc="string     [*.seq] Wildcard database filename (Any\nstring)")), ToolInput(tag="in_fields", input_type=Boolean(optional=True), prefix="-fields", doc=InputDocumentation(doc="menu       [id,acc] Index fields (Values: id (ID); acc\n(Accession number); sv (Sequence Version and\nGI); des (Description); key (Keywords); org\n(Taxonomy))")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="-outfile", doc=InputDocumentation(doc="outfile    [*.dbxgcg] General log output file")), ToolInput(tag="in_release", input_type=Boolean(optional=True), prefix="-release", doc=InputDocumentation(doc="string     [0.0] Release number (Any string up to 9\ncharacters)")), ToolInput(tag="in_date", input_type=Boolean(optional=True), prefix="-date", doc=InputDocumentation(doc="string     [00/00/00] Index date (Date string dd/mm/yy)")), ToolInput(tag="in_exclude", input_type=Boolean(optional=True), prefix="-exclude", doc=InputDocumentation(doc="string     Wildcard filename(s) to exclude (Any string)")), ToolInput(tag="in_statistics", input_type=Boolean(optional=True), prefix="-statistics", doc=InputDocumentation(doc="boolean    [N] Report I/O statistics for each input")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="-indexoutdir        outdir     [.] Index file output directory"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="outfile    [*.dbxgcg] General log output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Dbxgcg_V0_1_0().translate("wdl", allow_empty_container=True)

