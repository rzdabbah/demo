
# syntax=docker/dockerfile:1

FROM python:3.11-slim

WORKDIR /app

COPY /src .

#upgrade pip 
RUN pip install --upgrade pip
# Install python requirements
RUN pip install -r requirements.txt


CMD [ "python", "run.py"]
