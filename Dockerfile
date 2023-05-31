FROM continuumio/miniconda3

WORKDIR /app

# Create the environment:
COPY kmergenetyper.yml .

RUN conda env create -f kmergenetyper.yml

# Initialize conda in bash config fiiles:
RUN conda init bash

# Override default shell and use bash
SHELL ["conda", "run", "-n", "kmergenetyper", "/bin/bash", "-c"]

# Activate the environment, and make sure it's activated:
RUN echo "conda activate myenv" > ~/.bashrc
RUN pip install kmergenetyper


# The code to run when container is started:
COPY run.py .
ENTRYPOINT ["conda", "run", "-n", "kmergenetyper"]
