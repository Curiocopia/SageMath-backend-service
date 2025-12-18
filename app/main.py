from fastapi import FastAPI
import subprocess
import requests
import os
from pathlib import Path

default_target_path = str(Path.cwd())+'/sage/'
# Define the path to your shell script
SCRIPT_PATH = os.getenv('SCRIPT_PATH', default_target_path) # Change in coordination with Dockerfile directory changes
print(SCRIPT_PATH)

app = FastAPI()

@app.get("/generic/")
async def read_item(input: str):
    arguments = [input]
    script = "generic.sh"
    return subprocess.run(
            [SCRIPT_PATH+script] + arguments,
            capture_output=True,
            text=True,
            check=True
        )

@app.get("/factor/")
async def read_item(input: str):
    arguments = [input]
    script = "factor.sh"
    return subprocess.run(
            [SCRIPT_PATH+script] + arguments,
            capture_output=True,
            text=True,
            check=True
        )

@app.get("/is_prime/")
async def read_item(input: str):
    arguments = [input]
    script = "is_prime.sh"
    return subprocess.run(
            [SCRIPT_PATH+script] + arguments,
            capture_output=True,
            text=True,
            check=True
        )

@app.get("/oppermann_counts/")
async def read_item(input: str):
    arguments = [input]
    script = "oppermann_counts.sh"
    return subprocess.run(
            [SCRIPT_PATH+script] + arguments,
            capture_output=True,
            text=True,
            check=True
        )

@app.get("/oppermann_counts_with_legendre/")
async def read_item(input: str):
    arguments = [input]
    script = "oppermann_counts_with_legendre.sh"
    return subprocess.run(
            [SCRIPT_PATH+script] + arguments,
            capture_output=True,
            text=True,
            check=True
        )


