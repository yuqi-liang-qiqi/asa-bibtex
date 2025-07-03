# biblatex-asa: American Sociological Association (ASA) Style for biblatex

> **A complete and independent implementation of ASA citation style, following the format requirements of the American Sociological Review.**  
> This package provides native ASA formatting without requiring any external style dependencies.

[![License: LPPL](https://img.shields.io/badge/License-LPPL-blue.svg)](https://www.latex-project.org/lppl/)

## Table of Contents

- [About](#about)
- [Project Structure](#project-structure)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Examples](#examples)
- [ASA Format Features](#asa-format-features)
- [Development](#development)
- [FAQ](#faq)
- [Contributing](#contributing)
- [License](#license)

## About

This project provides a complete `biblatex` style implementation for LaTeX, following the American Sociological Association (ASA) reference format. It is especially suitable for students, researchers, and anyone submitting to sociology journals.

**Key Features:**
- ✅ Native ASA citation and bibliography formatting
- ✅ Support for all major entry types (articles, books, datasets, theses, etc.)
- ✅ Proper handling of multiple authors, publication dates, and special cases
- ✅ Correct page number formatting (Pp. vs direct notation)
- ✅ No external style dependencies required
- ✅ Fully independent implementation built from the ground up

**Who is it for?**
- Anyone writing sociology papers/theses in LaTeX
- Users who want ASA-style references and citations
- Beginners who want a ready-to-use template

**Author:** Yuqi Liang  
**Email:** yuqi.liang.1900@gmail.com  
**GitHub:** [yuqi-liang-qiqi](https://github.com/yuqi-liang-qiqi)

## Project Structure

```
biblatex-asa/
├── README.md                     # Main documentation
├── INSTALL                       # Installation instructions
├── MANIFEST                      # Package contents list
├── .gitignore                    # Git ignore patterns
│
├── src/                          # 📦 Source files
│   ├── biblatex-asa.sty         # LaTeX package wrapper
│   ├── asa.bbx                  # Bibliography style file
│   └── asa.cbx                  # Citation style file
│
├── docs/                         # 📚 Documentation
│   ├── COMPILE_BIBLATEX_ASA_LOCALLY.md
│   └── requirements.md
│
├── examples/                     # 📝 Usage examples
│   ├── basic/                   # Basic usage example
│   │   ├── example.tex
│   │   ├── example.bib
│   │   └── example.pdf
│   └── with-package/            # Using package wrapper
│       ├── example-with-package.tex
│       └── example.bib
│
├── tests/                        # 🧪 Test files
│   ├── test-asa.tex
│   ├── test-asa.bib
│   └── test-asa.pdf
│
└── scripts/                      # 🔧 Build and utility scripts
    ├── build.sh                 # Build and test script
    └── clean.sh                 # Cleanup temporary files
```

## Requirements

This project only requires standard LaTeX components:

- **LaTeX distribution**: TeX Live, MiKTeX, or similar
- **biblatex package**: Usually included with LaTeX distributions
- **biber backend**: Recommended (comes with modern LaTeX distributions)

### Why You Do NOT Need MacTeX or Homebrew

This project works with any standard LaTeX installation. You do NOT need to install MacTeX via Homebrew:

- ✅ The official [TeX Live installer](https://tug.org/texlive/) is sufficient and recommended
- ✅ TeX Live 2025 has been tested and works perfectly
- ✅ No extra GUI tools or the large MacTeX "full package" required
- ✅ Using the official TeX Live installer saves disk space and gives you more control

**Summary:** If you can compile with `pdflatex`, `biber`, and `biblatex` from TeX Live, you are ready to use this project.

## Installation

### Option 1: Local Installation (Recommended for single project)

1. **Download the source files:**
   ```bash
   # Copy these files to your project directory:
   src/biblatex-asa.sty
   src/asa.bbx  
   src/asa.cbx
   ```

2. **In your LaTeX document, use:**
   ```latex
   \usepackage{biblatex-asa}
   \addbibresource{your-bibliography.bib}
   ```

### Option 2: Direct Style Usage

1. **Copy style files to your project:**
   ```bash
   # Copy these files to your project directory:
   src/asa.bbx
   src/asa.cbx
   ```

2. **In your LaTeX document, use:**
   ```latex
   \usepackage[backend=biber,style=asa]{biblatex}
   \addbibresource{your-bibliography.bib}
   ```

### Option 3: System-wide Installation

See the [`INSTALL`](INSTALL) file for detailed system-wide installation instructions.

## Usage

### Basic Usage with Package Wrapper

```latex
\documentclass{article}
\usepackage{biblatex-asa}
\addbibresource{references.bib}

\begin{document}

This is a citation \parencite{key2023}.
\textcite{author2022} argues that...

\printbibliography

\end{document}
```

### Direct Style Usage

```latex
\documentclass{article}
\usepackage[backend=biber,style=asa,giveninits=false]{biblatex}
\addbibresource{references.bib}

\begin{document}

Here is a citation~\parencite{smith2020}.
\printbibliography

\end{document}
```

### Sample Bibliography Entry

```bibtex
@article{smith2020,
  author = {John Smith and Jane Doe},
  title = {Sociological Research},
  journal = {American Sociological Review},
  year = {2020},
  volume = {85},
  number = {2},
  pages = {123-145},
  doi = {10.1234/asr.2020.12345}
}
```

### Compilation Steps

```bash
pdflatex document.tex
biber document        # Use biber, not bibtex
pdflatex document.tex
pdflatex document.tex
```

## Examples

The project includes comprehensive examples in the [`examples/`](examples/) directory:

### Basic Example
- **Location**: [`examples/basic/`](examples/basic/)
- **Description**: Simple usage with direct style loading
- **Files**: `example.tex`, `example.bib`, `example.pdf`

### Package Wrapper Example  
- **Location**: [`examples/with-package/`](examples/with-package/)
- **Description**: Usage with the package wrapper
- **Files**: `example-with-package.tex`, `example.bib`

### Comprehensive Test
- **Location**: [`tests/`](tests/)
- **Description**: Extensive testing of all ASA features
- **Files**: `test-asa.tex`, `test-asa.bib`, `test-asa.pdf`

## ASA Format Features

This implementation provides complete ASA formatting including:

### ✅ Bibliography Format
- **Author names**: First author inverted (Last, First), subsequent authors normal order
- **All authors listed**: No "et al." truncation in bibliography (ASA requirement)
- **Publication dates**: Proper handling of years, "Forthcoming", and "n.d."
- **Same-year publications**: Automatic a/b/c suffixes for disambiguation

### ✅ Citation Format  
- **In-text citations**: Proper family name display with "et al." for 3+ authors
- **Two authors**: "Author1 and Author2" (no comma before "and")
- **Spacing**: Correct spacing before parentheses: `Author (Year)`

### ✅ Entry Type Support
- **Articles**: Journal name, volume(issue): pages format
- **Books**: Complete publisher and location information
- **Book Chapters**: Proper "Pp. X–Y in..." formatting
- **Datasets**: DOI support with proper URL formatting  
- **Theses**: Department, institution, and location details
- **Websites**: URL handling with access dates

### ✅ Page Number Formatting
- **Book chapters**: `Pp. 63–93` (capital P)
- **Journal articles**: Direct notation `15(3): 100–110`
- **Automatic handling**: No manual intervention required

## Development

### Building and Testing

Use the provided scripts for development:

```bash
# Build and test all examples
./scripts/build.sh

# Clean temporary files
./scripts/clean.sh
```

### Package Options

The `biblatex-asa` package supports several options:

- `giveninits`: Use initials for given names
- `nogiveninits`: Use full given names (default)
- `backend=biber`: Use biber backend (recommended)
- `backend=bibtex`: Use bibtex backend

Example with options:
```latex
\usepackage[giveninits,backend=biber]{biblatex-asa}
```

### Common Issues and Solutions

- **References not showing?** Make sure you run `biber` (not `bibtex`)
- **File not found?** Ensure all package files are in the correct location
- **Encoding problems?** Save all files as UTF-8
- **Build errors?** Use `./scripts/clean.sh` to remove temporary files

## FAQ

**Q: Is this the official ASA style?**  
A: This is an independent implementation following the format requirements of the American Sociological Review and ASA Style Guide. It provides comprehensive ASA formatting without relying on external styles.

**Q: How do I add new entry types (datasets, theses, etc.)?**  
A: See the sample `.bib` files in [`examples/`](examples/) and [`tests/`](tests/) and comments in [`src/asa.bbx`](src/asa.bbx) for supported types. The style includes native drivers for all major ASA-required entry types.

**Q: Do I need to install biblatex-apa first?**  
A: No! This is a completely independent implementation. You only need standard biblatex and biber.

**Q: Can I use this with other bibliography styles?**  
A: This package is specifically designed for ASA style. For other styles, use the appropriate biblatex style.

## Contributing

Contributions are welcome! Please:

1. Check the [`examples/`](examples/) and [`tests/`](tests/) to understand the expected behavior
2. Use the build script to test your changes: `./scripts/build.sh`
3. Update documentation as needed
4. Submit pull requests with clear descriptions

## License

This work is distributed under the LaTeX Project Public License (LPPL), version 1.3 or later.

---

**For questions or help, contact Yuqi Liang: yuqi.liang.1900@gmail.com**

