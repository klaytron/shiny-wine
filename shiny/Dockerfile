FROM rocker/r-base:4.3.1
RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*
RUN install.r renv
WORKDIR /home/app
COPY shiny-wine/app.R ./
COPY shiny-wine/db.R ./
COPY shiny-wine/renv.lock ./renv.lock
ENV RENV_PATHS_LIBRARY renv/library
RUN R -e "renv::restore()"
RUN echo "local(options(shiny.port = 3838, shiny.host = '0.0.0.0'))" > /usr/lib/R/etc/Rprofile.site
RUN addgroup --system app \
    && adduser --system --ingroup app app
RUN chown app:app -R /home/app
USER app
EXPOSE 3838
CMD ["R", "-e", "shiny::runApp('/home/app')"]
