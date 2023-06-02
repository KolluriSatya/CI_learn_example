FROM continuumio/miniconda3
WORKDIR /app

# Create the environment:
COPY kmergenetyper.yml .

RUN conda env create -f kmergenetyper.yml

# Create the environment:
COPY kmergenetyper.yml .
RUN conda env create -f kmergenetyper.yml

# Activate the environment, and make sure it's activated:
RUN conda activate myenv
# Override default shell and use bash
SHELL ["conda", "run", "-n", "kmergenetyper", "/bin/bash", "-c"]

RUN kma -h

RUN pip install kmergenetyper

<<<<<<< HEAD
ENTRYPOINT ["conda", "run", "-n", "kmergenetyper"]
=======
ENTRYPOINT ["conda", "run", "-n", "kmergenetyper"]
>>>>>>> dfa283d (docker1)
