# Documentation Directory

This directory contains the documentation for the biblatex-asa package, organized into different versions to meet various user needs and distribution requirements.

## Directory Structure

### `beginner-guide/`
**Complete User Guide** - Comprehensive documentation designed for beginners and detailed reference.

**Contents:**
- `biblatex-asa-manual-full.pdf` (14 pages) - Complete tutorial with extensive explanations
- `biblatex-asa-manual-full.tex` - LaTeX source code for the complete guide

**Features:**
- Detailed beginner's guide to referencing systems
- Comparison of different citation styles (ASA, APA, Chicago, Harvard, Economics)
- BibTeX vs. biblatex explanation
- Step-by-step installation instructions for different platforms
- Comprehensive citation command examples
- Detailed troubleshooting section
- Platform-specific solutions (Overleaf, VS Code, command line)
- Personal development story and acknowledgments

**Target audience:** New LaTeX users, students learning academic writing, researchers switching from other citation styles.

### `ctan-version/`
**Concise Technical Manual** - Streamlined documentation for CTAN distribution and experienced users.

**Contents:**
- `biblatex-asa-manual.pdf` (6 pages) - Technical reference with essential information
- `biblatex-asa-manual.tex` - LaTeX source code for the concise manual

**Features:**
- Essential package information only
- Quick installation instructions
- Core usage examples
- Basic citation commands
- ASA format specifications
- Brief troubleshooting
- No beginner explanations or personal content

**Target audience:** Experienced LaTeX users, package maintainers, CTAN reviewers, quick reference needs.

### Other Files

- `requirements.md` - Package dependency information
- `COMPILE_BIBLATEX_ASA_LOCALLY.md` - Local compilation instructions

## Which Documentation to Use?

**Choose the Complete User Guide if:**
- You're new to LaTeX or biblatex
- You want to understand why ASA style differs from other citation formats
- You need detailed installation help for your specific platform
- You prefer comprehensive explanations with examples

**Choose the Concise Technical Manual if:**
- You're experienced with LaTeX packages
- You only need essential usage information
- You want quick reference without extensive explanations
- You're evaluating the package for technical purposes

## Documentation Development

Both versions are maintained simultaneously:
- The **Complete User Guide** serves GitHub users and beginners
- The **Concise Technical Manual** meets CTAN's requirements for focused, technical documentation

The documentation follows LaTeX best practices and uses the `ltxdoc` class for consistency with standard LaTeX package documentation.

## Contributing

When updating documentation:
1. Consider whether changes affect both versions or just one
2. Maintain consistency in technical content between versions
3. Keep the Complete Guide beginner-friendly while ensuring the Concise Manual remains focused
4. Test compilation of both versions after making changes

For technical corrections or improvements, please see our [main repository](https://github.com/yuqi-liang-qiqi/biblatex-asa). 