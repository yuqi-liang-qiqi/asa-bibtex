#!/bin/bash
# Build script for biblatex-asa package

set -e

echo "Building biblatex-asa package..."

# Test basic example
echo "Testing basic example..."
cd examples/basic
pdflatex example.tex
biber example
pdflatex example.tex
pdflatex example.tex
cd ../..

# Test with-package example
echo "Testing with-package example..."
cd examples/with-package
pdflatex example-with-package.tex
biber example-with-package
pdflatex example-with-package.tex
pdflatex example-with-package.tex
cd ../..

# Run tests
echo "Running tests..."
cd tests
pdflatex test-asa.tex
biber test-asa
pdflatex test-asa.tex
pdflatex test-asa.tex
cd ..

echo "Build completed successfully!" 