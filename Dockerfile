FROM continuumio/miniconda3

WORKDIR /app

# Make RUN commands use `bash --login`:
SHELL ["/bin/bash", "--login",  "-c"]


# Create the environment:
COPY kmergenetyper.yml .
RUN conda env create -f kmergenetyper.yml

# Initialize conda in bash config fiiles:
RUN conda init bash

# Activate the environment, and make sure it's activated:
RUN echo "conda activate myenv" > ~/.bashrc
RUN echo "Make sure flask is installed:"
RUN python -c "import flask"
RUN kma -h
RUN pip install kmergenetyper

# The code to run when container is started:
COPY run.py .
ENTRYPOINT ["conda", "run", "-n", "kmergenetyper"]
