FROM continuumio/miniconda3
WORKDIR /app

# Make RUN commands use `bash --login`:
SHELL ["/bin/bash", "--login", "-c"]

# Create the environment:
COPY kmergenetyper.yml .
RUN conda env create -f kmergenetyper.yml

# Initialize conda in bash config fiiles:
RUN conda init bash

# Activate the environment, and make sure it's activated:
RUN conda activate myenv

# Override default shell and use bash
SHELL ["conda", "run", "-n", "kmergenetyper", "/bin/bash", "-c"]

RUN kma -h

RUN pip install kmergenetyper

ENTRYPOINT ["conda", "run", "-n", "kmergenetyper"]
