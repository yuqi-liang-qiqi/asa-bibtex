<!--
 * @Author: Yuqi Liang dawson1900@live.com
 * @Date: 2025-07-07 10:46:40
 * @LastEditors: Yuqi Liang dawson1900@live.com
 * @LastEditTime: 2025-07-07 10:46:42
 * @FilePath: /biblatex-asa/src/README.md
-->
# Source Structure: biblatex-asa

This directory contains two alternative development workflows for the biblatex-asa package:

## literate-programming/
- Contains `biblatex-asa.dtx` and `biblatex-asa.ins`.
- **Literate programming**: All code and documentation are combined in a single `.dtx` file. Run `latex biblatex-asa.ins` to extract the `.sty`, `.bbx`, and `.cbx` files. This is the recommended format for CTAN submissions and for users who want integrated documentation and code.

## traditional/
- (If present) Contains `biblatex-asa.sty`, `asa.bbx`, and `asa.cbx` as separate files.
- **Traditional development**: Each file is edited and maintained separately. This is convenient for direct code editing and testing, but does not provide integrated documentation.

You can choose either workflow for development. For distribution and CTAN upload, the literate programming (`.dtx`/`.ins`) approach is preferred. 