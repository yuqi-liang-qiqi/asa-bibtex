# biblatex-asa: American Sociological Association (ASA) Style for biblatex

> **Current version is based on the citation style of the American Sociological Review, and is developed on top of the original `biblatex-apa` style.**
> If future official ASA guidelines differ, a new version will be released to match those changes.

## Why You Do NOT Need MacTeX or Homebrew for This Project

This project only requires standard LaTeX, biblatex, and biber. You do NOT need to install MacTeX via Homebrew (e.g., `brew install --cask mactex`).

- The official TeX Live installer (https://tug.org/texlive/) is sufficient and recommended.
- TeX Live 2025 has been tested and works perfectly for compiling this project.
- You do not need extra GUI tools or the large MacTeX "full package" unless you have special requirements (e.g., TeXShop, system-wide fonts, or other GUI tools).
- Using the official TeX Live installer saves disk space and gives you more control over your TeX environment.

**Summary:**
- If you can compile with `pdflatex`, `biber`, and `biblatex` from TeX Live, you are ready to use this project.
- No need for Homebrew or MacTeX unless you want the full MacTeX suite for other reasons.

## What is this?
This project provides a `biblatex` style for LaTeX, following the American Sociological Association (ASA) reference format. It is especially suitable for students, researchers, and anyone submitting to sociology journals.

- **This style is adapted from [`biblatex-apa`](https://github.com/plk/biblatex-apa) by Philip Kime, with extensive modifications for ASA requirements.**
- **Author:** Yuqi Liang  
- **Email:** yuqi.liang.1900@gmail.com  
- **GitHub:** [yuqi-liang-qiqi](https://github.com/yuqi-liang-qiqi)

## Who is it for?
- Anyone writing sociology papers/theses in LaTeX
- Users who want ASA-style references and citations
- Beginners who want a ready-to-use template

## Quick Start

### 1. Requirements
- A working LaTeX distribution (TeX Live, MiKTeX, etc.)
- `biblatex` package (usually included)
- `biber` backend (recommended)

### 2. Installation
1. Download `asa.bbx` and `asa.cbx` to the same folder as your `.tex` file.
2. (Optional) Place them in your local texmf tree for global use.

### 3. Usage Example

**Minimal LaTeX file (`test-asa.tex`):**
```latex
\documentclass{article}
\usepackage[backend=biber,style=asa]{biblatex}
\addbibresource{test-asa.bib}
\begin{document}
Here is a citation~\parencite{smith2020}.
\printbibliography
\end{document}
```

**Sample bibliography file (`test-asa.bib`):**
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

### 4. Compile Steps
1. `pdflatex test-asa.tex`
2. `biber test-asa`
3. `pdflatex test-asa.tex` (twice for cross-references)

### 5. Common Issues
- **References not showing?** Make sure you run `biber` (not `bibtex`).
- **File not found?** Ensure `asa.bbx` and `asa.cbx` are in the same folder as your `.tex` file.
- **Encoding problems?** Save all files as UTF-8.

## FAQ
- **Q: Is this the official ASA style?**  
  A: This version is based on the style used by the American Sociological Review, and is developed on top of `biblatex-apa`. If the official ASA guidelines differ, a new version will be released.
- **Q: How do I add new entry types (datasets, theses, etc.)?**  
  A: See the sample `.bib` file and comments in `asa.bbx` for supported types.

## Contributing
Pull requests and issues are welcome! Please describe any problems or suggestions clearly.

## License
Distributed under the LaTeX Project Public License (LPPL).

---
For questions or help, contact Yuqi Liang: yuqi.liang.1900@gmail.com

