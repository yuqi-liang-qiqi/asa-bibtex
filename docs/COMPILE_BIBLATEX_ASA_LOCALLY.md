# How to Compile biblatex-asa Locally with TeX Live 2025 and Visual Studio Code

This guide explains how to compile a LaTeX document using your custom `biblatex-asa` style on your local machine (macOS), using TeX Live 2025 and Visual Studio Code. It also highlights the differences from Overleaf and explains the LaTeX + biber workflow.

---

## 1. Install TeX Live 2025

- Download and install TeX Live 2025 from [https://tug.org/texlive/](https://tug.org/texlive/).
- During installation, use the default location (e.g., `/usr/local/texlive/2025`).

## 2. Set Up Your PATH

To ensure your system uses the new TeX Live 2025 binaries, add the following line to the **top** of your `~/.zshrc` file:

```sh
export PATH=/usr/local/texlive/2025/bin/universal-darwin:$PATH
```

After editing, run:

```sh
source ~/.zshrc
```

Check that the correct binaries are used:

```sh
which pdflatex
# Should output: /usr/local/texlive/2025/bin/universal-darwin/pdflatex
```

## 3. Install Required Packages

In the terminal, run:

```sh
sudo tlmgr install biblatex biber
```

## 4. Prepare Your Files

- Place your main LaTeX file (e.g., `test-asa.tex`), your bibliography file (e.g., `test-asa.bib`), and your custom style file (e.g., `apa.bbx` modified for ASA) in the same working directory.

## 5. Example LaTeX File

```latex
\documentclass{article}
\usepackage[backend=biber,style=apa]{biblatex}
\addbibresource{test-asa.bib}

\begin{document}

\nocite{*} % Cite all entries

\printbibliography[title={REFERENCES}]

\end{document}
```


## 6. Compile Your Document (LaTeX + biber Workflow)

Before running the commands, delete temporary files locally:

```sh
rm -f test-asa.aux test-asa.bbl test-asa.bcf test-asa.blg test-asa.log test-asa.run.xml test-asa.pdf
```

Open a terminal in your project directory and run:

```sh
pdflatex test-asa.tex
biber test-asa
pdflatex test-asa.tex
pdflatex test-asa.tex
```

- The **first pdflatex** pass generates auxiliary files.
- **biber** processes the bibliography and creates the `.bbl` file.
- The **second and third pdflatex** passes resolve all references and produce the final PDF.

## 7. Open the Output

Open `test-asa.pdf` to view your formatted bibliography.

---

## Understanding the Compilation Workflow (For Beginners)

When using LaTeX with biblatex and biber, the process of generating your final PDF with correct citations and bibliography involves several steps. Here's why:

1. **First pdflatex run:**
   - LaTeX reads your `.tex` file and notes all the citation commands (like `\textcite{bernard1957}`), but it does not yet know what the actual references look like.
   - It writes this information into an auxiliary file (`.aux` and `.bcf`).
   - The PDF is created, but citations may appear as question marks or as `<empty citation>` because the bibliography data is not yet included.

2. **biber run:**
   - Biber reads the `.bcf` file and your `.bib` file.
   - It finds all the citation keys, looks up the full reference information, sorts and formats the bibliography, and writes this into a `.bbl` file.
   - No PDF is created at this step, but the `.bbl` file is now ready for LaTeX to use.

3. **Second pdflatex run:**
   - LaTeX now reads the `.bbl` file and inserts the formatted bibliography and in-text citations into your document.
   - The PDF is updated, and you should see your references and citations appear correctly.

4. **Third pdflatex run (optional but recommended):**
   - This final run ensures that all cross-references (such as citation labels, page numbers, and bibliography sorting) are fully resolved.
   - Sometimes, changes in the bibliography can affect the layout, so this step guarantees everything is up to date.

**In summary:**
- The first `pdflatex` run prepares the groundwork.
- `biber` fills in the citation and bibliography details.
- The second and third `pdflatex` runs make sure everything is correctly displayed and cross-referenced in the PDF.

> **Tip:** After the first `pdflatex`, your PDF may update, but without running `biber` and the subsequent `pdflatex` runs, your citations and bibliography will be incomplete or missing.

---

## Notes: Overleaf vs. Local Compilation

- **Overleaf** automates all compilation steps and manages the TeX environment for you.
- **Locally**, you must ensure your PATH, packages, and compilation sequence are correct.
- If you change your bibliography or citations, always repeat the full compile sequence above.

---

## 8. ASA Format Requirements and Important Details

### Page Number Formatting: Pp. vs pp.

The ASA format has specific requirements for page number prefixes that differ by publication type:

**📖 Book Chapters/Collections (incollection type):**
```
Sampson, Robert J. 1992. "Family Management and Child Development: Insights 
from Social Disorganization Theory." Pp. 63–93 in Advances in Criminology 
Theory, Vol. 3, Facts, Frameworks, and Forecasts, edited by J. McCord. 
New Brunswick, NJ: Transaction.
```
- Uses **capital "Pp."** before page numbers
- Format: `Pp. [start]–[end] in [book title]`

**📄 Journal Articles (article type):**
```
Lee, Alex. 2021. "Urbanization Trends". Urban Studies 15(3): 100–110.
```
- Page numbers appear directly after volume/issue
- Format: `[volume]([issue]): [start]–[end]`
- No "pp." prefix needed

**🎓 Other Types:**
- Some entry types may use lowercase "pp." depending on context
- The biblatex-asa style automatically handles these distinctions

### Why This Distinction Matters

This formatting difference reflects traditional academic publishing conventions:
- **Book chapters** are treated as discrete sections within larger works, hence "Pp." (Pages)
- **Journal articles** are complete works within a serial publication, using direct page notation
- This follows the American Sociological Association's official style guide requirements

### Technical Implementation

Our `asa.bbx` file handles this automatically through:
```latex
% Specific formatting for incollection pages
\DeclareFieldFormat[incollection]{pages}{Pp. #1}

% Article pages use default formatting (no prefix)
```

This ensures proper formatting without manual intervention while compiling your bibliography.

---

If you encounter errors, check your PATH, package installation, and file locations. Share error messages for help! 