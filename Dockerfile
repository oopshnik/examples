FROM almondsh/almond:latest

USER root
RUN apt-get update && apt-get install -y neofetch podman xterm

USER $NB_UID
RUN jupyter labextension install @jupyterlab/plotly-extension

COPY --chown=1000:100 notebooks/ $HOME
