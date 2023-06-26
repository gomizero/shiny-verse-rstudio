FROM rocker/shiny-verse:latest
RUN apt update \
    && apt install -y vim 

RUN echo "install.packages('plumber')" > ./install.R
RUN Rscript ./install.R
CMD /init
