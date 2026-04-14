#!/bin/bash
# Usage: ./build-pdf.sh <source_markdown> <output_pdf> <VERSION>
# Example: ./build-pdf.sh docs/guideline.md output/guideline.pdf 1.2.3

set -e

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <source_markdown> <output_pdf> <VERSION>"
  exit 1
fi

SRC_MD="$1"
OUT_PDF="$2"
VERSION="$3"

# Create a temporary copy of the markdown file
TMP_MD="docs/dummy.md"
trap 'rm -f "$TMP_MD"' EXIT

# Replace all {{VERSION}} placeholders
sed "s/{{VERSION}}/$VERSION/g" "$SRC_MD" > "$TMP_MD"

# Run the Docker container to generate the PDF
docker run --rm -v "$(pwd):/workspace" markdown-to-pdf \
  "$TMP_MD" -o "$OUT_PDF" \
  --template eisvogel \
  --pdf-engine=xelatex \
  --toc \
  -V geometry:margin=2.5cm
