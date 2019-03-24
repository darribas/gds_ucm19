FROM darribas/gds:2.0

RUN rm -R work/

# Make sure the contents of our repo are in ${HOME}
# https://mybinder.readthedocs.io/en/latest/tutorials/dockerfile.html#preparing-your-dockerfile
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

# Remove Dockerfile to avoid confusion
RUN rm ./Dockerfile
