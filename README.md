# markdown-to-pdf
A sample-repo for releasing a markdown as pdf

Using Pandoc and the [Eisvogel template](https://github.com/Wandmalfarbe/pandoc-latex-template) to convert markdown to pdf in a Docker container.

## Conversion via GitHub Actions
The conversion is automated via GitHub Actions. Whenever a new release is created, the workflow defined in `.github/workflows/release-pdf.yml` is triggered. This workflow builds the Docker image, runs the conversion, and uploads the resulting PDF as a release asset.

## Local Development

### Building the Docker Image

To build the Docker image, run the following command in the project directory:

```sh
docker build -t markdown-to-pdf .
```

### Usage

To convert a Markdown file to PDF, use the following command:

```sh
docker run --rm -v "$(pwd):/workspace" markdown-to-pdf \
  docs/document.md \
  -o output/document.pdf \
  --template eisvogel \
  --pdf-engine=xelatex \
  --toc \
  -V geometry:margin=2.5cm
```

Replace `docs/document.md` with your Markdown file and `output/document.pdf` with the desired output filename.