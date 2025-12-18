FROM condaforge/miniforge3:latest

# Install sage and fastapi
RUN mamba create -n sage sage python=3.12 fastapi

COPY ./requirements.txt /requirements.txt

RUN python -m pip install --no-cache-dir --upgrade -r /requirements.txt

RUN groupadd -r sagegroup && useradd -r -g sagegroup sageuser

# Set the workdir
WORKDIR /home/sageuser/code

COPY ./app /home/sageuser/code/app

COPY ./sage /home/sageuser/code/sage

RUN chown -R sageuser:sagegroup /home/sageuser

USER sageuser

ENV PYTHONPATH="${PYTHONPATH}:/opt/conda/lib/python3.12/site-packages/:/opt/conda/envs/sage/lib/python3.12/site-packages/:/code/app"
CMD ["mamba", "run", "-n", "sage", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

