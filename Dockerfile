FROM debian:bookworm-slim

# System-Abhängigkeiten installieren
RUN apt-get update && apt-get install -y --no-install-recommends \
    pandoc \
    texlive-xetex \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-fonts-extra \
    texlive-lang-german \
    wget \
    ca-certificates \
  && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y --no-install-recommends \
    lmodern \
    texlive-fonts-recommended \
  && rm -rf /var/lib/apt/lists/*

COPY templates/eisvogel.latex /root/.pandoc/templates/eisvogel.latex
# Eisvogel-Template herunterladen und installieren
#RUN mkdir -p /root/.pandoc/templates && \
#    wget -qO /root/.pandoc/templates/eisvogel.latex \
#    https://raw.githubusercontent.com/Wandmalfarbe/pandoc-latex-template/refs/heads/master/template-multi-file/eisvogel.latex

WORKDIR /workspace

ENTRYPOINT ["pandoc"]