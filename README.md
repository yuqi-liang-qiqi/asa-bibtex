# A Clean Biblatex Style for American Sociological Review (ASA-style)

This is a customized `.bst` file for use with BibTeX to produce ASA-style references, closely aligned with the citation and bibliography formatting of *American Sociological Review* and the ASA Style Guide (7th ed., 2022).

## 💡 Why this version?

The widely circulated `asr.bst` (e.g., via [Chris Prener's Gist](https://gist.github.com/chris-prener/e384d441718d7dade6ef7012a5054d9e)) has a few limitations:

* It inserts a **comma between author and year** in citations like `(Rider and Tan, 2015)`, which **violates ASA style**.
* Institutional authors appear with full names and are not normalized.
* It lacks minor refinements for consistency with ASA’s “REFERENCES” guidelines.

## ✅ What’s fixed or improved in this version?

* 🔹 **Removed comma between author and year** in in-text citations → `(Rider and Tan 2015)` instead of `(Rider and Tan, 2015)`
* 🔹 Cleaned internal author formatting logic
* 🔹 Minor adjustments to period placement and spacing
* 🛠 You can manually format institutional authors with double braces:

  ```bibtex
  author = {{U.S. Social Security Administration}},
  ```

## 📦 How to use

1. Save `asr.bst` in your project folder.

2. In your LaTeX document, load `natbib`:

   ```latex
   \usepackage{natbib}
   ```

3. Set bibliography style and file:

   ```latex
   \bibliographystyle{asr}
   \bibliography{yourbib}
   ```

4. Compile using:

   ```
   pdflatex yourfile
   bibtex yourfile
   pdflatex yourfile
   pdflatex yourfile
   ```

## 📝 Notes

* This style is tested with standard entries: `article`, `book`, `incollection`, `phdthesis`, `misc`, etc.
* For dissertations, datasets, or `Forthcoming` entries, ensure `.bib` fields like `note` or `howpublished` are clearly written.
* Compatible with Overleaf or local TeX distributions.

---

## 🙌 Acknowledgments

* Based on earlier work by [Chris Prener](https://gist.github.com/chris-prener/e384d441718d7dade6ef7012a5054d9e)
* Modifications and debugging by [@yuqi-liang-qiqi](https://github.com/yuqi-liang-qiqi)
* Built with `makebst` and hand-edited for ASA 7th alignment

