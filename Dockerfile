FROM jupyter/base-notebook:latest

USER root

RUN apt-get update && apt-get install -y libpq-dev gcc

USER jovyan
RUN mkdir  -p /home/jovyan/work 

WORKDIR /home/jovyan/work

COPY requirements.txt .
COPY data_prueba_tecnica.csv .
RUN pip install -r requirements.txt

EXPOSE 8888
 