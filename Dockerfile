FROM continuumio/miniconda3

WORKDIR /app

# Create the environment:
COPY kmergenetyper.yml .
RUN conda env create -f kmergenetyper.yml

# Activate the environment, and make sure it's activated:
RUN conda activate kmergenetyper
RUN echo "Make sure flask is installed:"
RUN python -c "import flask"

# Override default shell and use bash
SHELL ["conda", "run", "-n", "kmergenetyper", "/bin/bash", "-c"]

RUN kma -h

RUN pip install kmergenetyper

# The code to run when container is started:
COPY run.py .
ENTRYPOINT ["conda", "run", "-n", "kmergenetyper"]
