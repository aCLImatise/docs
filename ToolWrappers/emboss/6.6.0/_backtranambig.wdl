version 1.0

task Backtranambig {
  input {
    Boolean? table
  }
  command <<<
    _backtranambig \
      ~{if (table) then "-table" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    table: "menu       [0] Genetic code to use (Values: 0\\n(Standard); 1 (Standard (with alternative\\ninitiation codons)); 2 (Vertebrate\\nMitochondrial); 3 (Yeast Mitochondrial); 4\\n(Mold, Protozoan, Coelenterate Mitochondrial\\nand Mycoplasma/Spiroplasma); 5\\n(Invertebrate Mitochondrial); 6 (Ciliate\\nMacronuclear and Dasycladacean); 9\\n(Echinoderm Mitochondrial); 10 (Euplotid\\nNuclear); 11 (Bacterial); 12 (Alternative\\nYeast Nuclear); 13 (Ascidian Mitochondrial);\\n14 (Flatworm Mitochondrial); 15\\n(Blepharisma Macronuclear); 16\\n(Chlorophycean Mitochondrial); 21 (Trematode\\nMitochondrial); 22 (Scenedesmus obliquus);\\n23 (Thraustochytrium Mitochondrial))"
  }
  output {
    File out_stdout = stdout()
  }
}