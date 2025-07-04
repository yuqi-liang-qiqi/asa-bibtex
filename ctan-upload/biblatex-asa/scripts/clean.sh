#!/bin/bash
# Clean script for biblatex-asa package

echo "Cleaning LaTeX temporary files..."

# Function to clean directory
clean_dir() {
    if [ -d "$1" ]; then
        echo "Cleaning $1..."
        cd "$1"
        rm -f *.aux *.log *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.synctex.gz *.out *.toc *.run.xml
        cd - > /dev/null
    fi
}

# Clean all directories
clean_dir "examples/basic"
clean_dir "examples/with-package"
clean_dir "tests"
clean_dir "."

# Remove system files
find . -name ".DS_Store" -delete 2>/dev/null || true

echo "Cleanup completed!" 