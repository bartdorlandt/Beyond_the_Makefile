from invoke import task
from dotenv import load_dotenv
import os

VERSION = "latest"
IMAGE = "tmp_test_image"
load_dotenv()


@task
def build(context):
    context.run(f"docker buildx build -f Dockerfile -t {IMAGE}:{VERSION} .")

@task
def run(context, extra=''):
    context.run(f"docker run --rm {IMAGE}:{VERSION} {extra}" )

@task
def multiple(context):
    for _ in range(5):
        run(context)

@task
def print(context):
    VAR1 = os.getenv("VAR1")
    VAR2 = os.getenv("VAR2")
    context.run(f"echo Variable print. Var1: {VAR1}, Var2: {VAR2}")
