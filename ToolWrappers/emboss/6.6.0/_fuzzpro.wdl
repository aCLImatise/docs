version 1.0

task Fuzzpro {
  input {
    Boolean? pattern
  }
  command <<<
    _fuzzpro \
      ~{if (pattern) then "-pattern" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pattern: "pattern    The standard IUPAC one-letter codes for the\\namino acids are used.\\nThe symbol 'x' is used for a position where\\nany amino acid is accepted.\\nAmbiguities are indicated by listing the\\nacceptable amino acids for a given position,\\nbetween square parentheses '[ ]'. For\\nexample: [ALT] stands for Ala or Leu or Thr.\\nAmbiguities are also indicated by listing\\nbetween a pair of curly brackets '{ }' the\\namino acids that are not accepted at a given\\nposition. For example: {AM} stands for any\\namino acid except Ala and Met.\\nEach element in a pattern is separated from\\nits neighbor by a '-'. (Optional in\\nfuzzpro).\\nRepetition of an element of the pattern can\\nbe indicated by following that element with\\na numerical value or a numerical range\\nbetween parenthesis. Examples: x(3)\\ncorresponds to x-x-x, x(2,4) corresponds to\\nx-x or x-x-x or x-x-x-x.\\nWhen a pattern is restricted to either the\\nN- or C-terminal of a sequence, that pattern\\neither starts with a '<' symbol or\\nrespectively ends with a '>' symbol.\\nA period ends the pattern. (Optional in\\nfuzzpro).\\nFor example, [DE](2)HS{P}X(2)PX(2,4)C"
  }
  output {
    File out_stdout = stdout()
  }
}