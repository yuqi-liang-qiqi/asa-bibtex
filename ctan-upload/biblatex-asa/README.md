Permission is granted to copy, distribute and/or modify this software under
the terms of the LaTeX Project Public License (LPPL), version 1.3c or later
(http://www.latex-project.org/lppl.txt). The current
maintainer is Yuqi Liang (© 2025).

This package is a biblatex style for ASA (American Sociological Association)
style compliant documents typeset in LaTeX. It implements a citation style
(asa.cbx) and a references section style (asa.bbx). The styles are loaded
just like any other biblatex styles but the citation and references styles
should be used together as they are designed to work as a cohesive system.

The ASA format implementation follows the guidelines from the American
Sociological Review and American Sociological Association Style Guide,
specifically for author-date citations and reference list formatting.

You will need to be using biblatex >= 3.14 and biber >= 2.14. The biber
backend for biblatex is required. This style will not work correctly if
using bibtex as the backend for biblatex. You should also have etoolbox
>= 2.5 for proper functionality.

The package provides three ways to use the ASA style:

1. Load the convenience package: \usepackage{biblatex-asa}
2. Load biblatex directly: \usepackage[style=asa]{biblatex}
3. Separate styles: \usepackage[citestyle=asa,bibstyle=asa]{biblatex}

The first option (biblatex-asa.sty) is recommended for most users as it
provides appropriate defaults and handles common configuration automatically.

Package Contents:

Source files:
  biblatex-asa.sty            - LaTeX package wrapper
  asa.bbx                     - Bibliography style file  
  asa.cbx                     - Citation style file

Documentation:
  biblatex-asa-manual.pdf     - User manual
  INSTALL                     - Installation instructions
  LICENSE                     - License information

Examples:
  examples/basic/             - Basic usage example with .tex, .bib, and .pdf
  examples/with-package/      - Package wrapper example
  tests/                      - Comprehensive test documents

Please refer to biblatex-asa-manual.pdf for detailed documentation, including
installation instructions, usage examples, and troubleshooting information.

For questions or issues, contact the maintainer at dawson1900@live.com or
submit an issue at https://github.com/yuqi-liang-qiqi/biblatex-asa/issues. 