FROM python:3.11-slim
WORKDIR /app
COPY /src .

#upgrade pip 
RUN apt update
RUN apt-get -qq install default-jdk
# Install python requirements
RUN pip install --upgrade pip
RUN python -m pip install apache-flink
RUN pip install -r requirements.txt
RUN chmod +w submit.sh
CMD ["sh", "./submit.sh"]
