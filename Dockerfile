FROM BTIP2024/rstudio-verse-shiny

COPY scripts/install_shiny_server.sh /rocker_scripts/install_shiny_server.sh

RUN /rocker_scripts/install_shiny_server.sh

EXPOSE 3838
CMD ["/init"]

COPY scripts /rocker_scripts
