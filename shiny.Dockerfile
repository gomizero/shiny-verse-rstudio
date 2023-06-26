FROM rocker/shiny-verse:latest

ENV S6_VERSION=v2.1.0.2
ENV RSTUDIO_VERSION=2023.06.0+421
ENV DEFAULT_USER=rstudio
ENV PANDOC_VERSION=default
ENV QUARTO_VERSION=default

RUN /rocker_scripts/install_rstudio.sh
RUN /rocker_scripts/install_pandoc.sh
RUN /rocker_scripts/install_quarto.sh

EXPOSE 8787

CMD ["/init"]
