FROM jupyter/base-notebook

USER root

RUN apt-get update \
  && apt-get install -yq --no-install-recommends openjdk-11-jre

USER $NB_UID

RUN pip install requests boto3 kotlin-jupyter-kernel