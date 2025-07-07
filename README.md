<div align="center">
  <img src="assets/logo.svg" alt="biblatex-asa Logo" width="200"/>
  
  <h1>biblatex-asa</h1>
  <h3>American Sociological Association (ASA) Style for biblatex</h3>
  
  <p>
    <strong>A complete implementation of ASA citation style for biblatex,</strong><br/>
    <strong>following the format requirements of the American Sociological Review.</strong><br/>
    This package provides native ASA formatting built on top of biblatex's standard framework.
  </p>
  
  <p>
    <a href="https://www.latex-project.org/lppl/"><img src="https://img.shields.io/badge/License-LPPL-blue.svg" alt="License: LPPL"/></a>
    <a href="https://github.com/yuqi-liang-qiqi/biblatex-asa/releases"><img src="https://img.shields.io/github/v/release/yuqi-liang-qiqi/biblatex-asa?label=Latest%20Release" alt="Latest Release"/></a>
    <a href="https://ctan.org/pkg/biblatex-asa"><img src="https://img.shields.io/badge/CTAN-biblatex--asa-brightgreen" alt="CTAN Package"/></a>
    <a href="ctan-upload/biblatex-asa/docs/biblatex-asa-manual.pdf"><img src="https://img.shields.io/badge/Documentation-PDF-red" alt="Documentation"/></a>
  </p>
  
  <p>
    <a href="#installation">Quick Start</a> •
    <a href="#usage">Usage Guide</a> •
    <a href="#examples">Examples</a> •
    <a href="ctan-upload/biblatex-asa/docs/biblatex-asa-manual.pdf">Documentation</a> •
    <a href="#contributing">Contributing</a>
  </p>
</div>

---

## Features

<table>
<tr>
<td width="50%">

### **Core Features**
- Native ASA citation and bibliography formatting
- Support for all major entry types (articles, books, datasets, theses, etc.)
- Proper handling of multiple authors, publication dates, and special cases
- Correct page number formatting (Pp. vs direct notation)
- Built on biblatex's reliable standard and authoryear frameworks

</td>
<td width="50%">

### **Who is it for?**
- Anyone writing sociology papers/theses in LaTeX
- Users who want ASA-style references and citations
- Beginners who want a ready-to-use template
- Researchers submitting to sociology journals

</td>
</tr>
</table>

### Documentation

The main documentation is the **Complete User Guide**:

- [`docs/beginner-guide/biblatex-asa-manual-full.pdf`](docs/beginner-guide/biblatex-asa-manual-full.pdf)  
  A comprehensive tutorial and reference for all users, including beginners.

See [`docs/README.md`](docs/README.md) for details about the documentation structure.

---

## Table of Contents

<details>
<summary>Navigation</summary>

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

</details>

---

## About

This project provides a **complete `biblatex` style implementation** for LaTeX, following the American Sociological Association (ASA) reference format. It is especially suitable for students, researchers, and anyone submitting to sociology journals.

<div align="center">
  <table>
    <tr>
      <td align="center"><strong>Author</strong></td>
      <td align="center"><strong>Contact</strong></td>
      <td align="center"><strong>GitHub</strong></td>
    </tr>
    <tr>
      <td align="center">Yuqi Liang</td>
      <td align="center"><a href="mailto:dawson1900@live.com">dawson1900@live.com</a></td>
      <td align="center"><a href="https://github.com/yuqi-liang-qiqi">@yuqi-liang-qiqi</a></td>
    </tr>
  </table>
</div>

## Project Structure

This repository contains both the full development history (for developers and advanced users) and the final CTAN upload package (for official distribution). Below is a guide to help you understand what each part is for.

### Full Repository Structure (for development and reference)

<details>
<summary>Click to expand full repository structure</summary>

```
biblatex-asa/
├── README.md         # Main project documentation (this file)
├── INSTALL           # General installation instructions
├── LICENSE           # License information
├── .gitignore        # Git ignore rules
├── assets/           # Project assets (e.g., logo)
├── docs/             # Additional documentation, guides, and requirements
├── src/              # Source code and development files
├── examples/         # Example projects and test cases
├── scripts/          # Build and utility scripts
├── ctan-upload/      # Directory for preparing the official CTAN upload
│   └── biblatex-asa/ # The actual CTAN upload package (see below)
└── ...               # Other files and folders for development
```
</details>

- **Most users only need the files in `ctan-upload/biblatex-asa/` (see below).**
- The rest of the repository is for development, extended documentation, and advanced use.

### CTAN Upload Package (official release)

The actual content submitted to CTAN is located in `ctan-upload/biblatex-asa/` and contains only the files required for distribution and end users:

```
ctan-upload/biblatex-asa/
├── README.md                # Package overview and usage
├── INSTALL                  # Installation instructions for end users
├── LICENSE                  # License information
├── biblatex-asa.dtx         # Documented source (literate programming)
├── biblatex-asa.ins         # Installation script to generate style files
└── docs/                    # Documentation and usage examples
    ├── biblatex-asa-manual.pdf         # User manual (PDF)
    ├── biblatex-asa-manual.tex         # User manual (LaTeX source)
    ├── example-with-package.tex        # Example usage (package wrapper)
    ├── example-with-package.bib        # Example bibliography
    ├── example-with-package.pdf        # Example output (PDF)
    ├── example-without-package.tex     # Example usage (direct style)
    ├── example-without-package.bib     # Example bibliography
    └── example-without-package.pdf     # Example output (PDF)
```

**What does this mean for you?**
- If you are a typical user or want to install the package, you only need the files in `ctan-upload/biblatex-asa/`.
- If you are a developer, want to contribute, or are interested in the full history and extra documentation, you can explore the rest of the repository.
- **Only the files in `ctan-upload/biblatex-asa/` are included in the official CTAN release.**

If you are new to LaTeX or CTAN packages, start with the files in `ctan-upload/biblatex-asa/` and follow the instructions in the included `INSTALL` and `README.md` files.

---

## Requirements

You will need a recent LaTeX distribution and the following packages:

- **LaTeX distribution**: TeX Live 2020 or later, MiKTeX 2020 or later
- **biblatex**: Version 3.14 or later (provides the underlying bibliography system)
- **biber**: Version 2.14 or later (recommended backend for processing bibliography data)
- **etoolbox**: (automatically loaded by biblatex, provides programming facilities)

**Note**: This package is built on top of biblatex's `standard` and `authoryear` styles.

## Installation

### From CTAN or Source

1. Download the package from CTAN or GitHub.
2. The source includes only `biblatex-asa.dtx` and `biblatex-asa.ins`.
3. **Before use, generate the style files** by running:
   ```bash
   latex biblatex-asa.ins
   ```
   This will create:
   - `biblatex-asa.sty`
   - `asa.bbx`
   - `asa.cbx`
4. Place these files in your project directory or your local texmf tree.

See [`INSTALL`](INSTALL) for more details.

## Usage

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

## Examples

Example usage files are provided in `ctan-upload/biblatex-asa/docs/`:

- `example-with-package.tex` / `example-with-package.bib`
- `example-without-package.tex` / `example-without-package.bib`

**Note:** Before compiling these examples, you must generate the style files as described above.

## ASA Format Features

This implementation provides complete ASA formatting including:

### Bibliography Format
- **Author names**: First author inverted (Last, First), subsequent authors normal order
- **All authors listed**: No "et al." truncation in bibliography (ASA requirement)
- **Publication dates**: Proper handling of years, "Forthcoming", and "n.d."
- **Same-year publications**: Automatic a/b/c suffixes for disambiguation

### Citation Format  
- **In-text citations**: Proper family name display with "et al." for 3+ authors
- **Two authors**: "Author1 and Author2" (no comma before "and")
- **Spacing**: Correct spacing before parentheses: `Author (Year)`

### Entry Type Support
- **Articles**: Journal name, volume(issue): pages format
- **Books**: Complete publisher and location information
- **Book Chapters**: Proper "Pp. X–Y in..." formatting
- **Datasets**: DOI support with proper URL formatting  
- **Theses**: Department, institution, and location details
- **Websites**: URL handling with access dates

### Page Number Formatting
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
A: This is an implementation following the format requirements of the American Sociological Review and ASA Style Guide. It provides comprehensive ASA formatting built on biblatex's framework.

**Q: How do I add new entry types (datasets, theses, etc.)?**  
A: See the sample `.bib` files in [`examples/`](examples/) and [`tests/`](tests/) and comments in [`src/asa.bbx`](src/asa.bbx) for supported types. The style includes native drivers for all major ASA-required entry types.

**Q: Do I need to install biblatex-apa first?**  
A: No! This package only requires biblatex (version 3.14+) and biber (version 2.14+). It's built on biblatex's standard framework.

**Q: Can I use this with other bibliography styles?**  
A: This package is specifically designed for ASA style. For other styles, use the appropriate biblatex style.

## Contributing

Contributions are welcome! Please:

1. Check the [`examples/`](examples/) and [`tests/`](tests/) to understand the expected behavior
2. Use the build script to test your changes: `./scripts/build.sh`
3. Update documentation as needed
4. Submit pull requests with clear descriptions

## License

This work is distributed under the LaTeX Project Public License (LPPL), version 1.3c or later.

## Acknowledgments

This package was developed independently to provide comprehensive ASA formatting for the biblatex system. Thanks to the biblatex and biber development teams for their excellent software.

On a personal note, from the very first day I started learning programming, I dreamed of creating an open-source software package. For years, I had always envisioned developing a Python package, and after seven years of learning programming, I finally realized this dream by creating [Sequenzo](https://github.com/Liang-Team/Sequenzo/tree/main). 

The development of this biblatex-asa package, however, represents a different chapter in my programming journey—an unexpected detour that became equally meaningful. Unlike Sequenzo, which was a deliberate pursuit of my long-held ambition, this LaTeX package emerged as a serendipitous outcome born out of practical necessity.

When submitting my work to the *American Sociological Review*, I discovered that biblatex lacked ASA-specific citation tools, offering only APA and other styles. The prospect of switching from LaTeX to Word and managing references through Zotero seemed too time-consuming and energy-draining for me. So I decided to create my own solution.

I am deeply grateful to my supervisor Professor Ridhi Kashyap, my mentor Professor Tim Liao, and my family for providing me with the space to explore and grow. I also thank my partner and friends for their thoughtful companionship and unwavering support. Life continues, and the journey goes on.

---

**For questions or help, contact Yuqi Liang: dawson1900@live.com**

