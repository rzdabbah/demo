FROM python:3.11-slim
WORKDIR /app/
COPY requirements.txt .
RUN apt-get update
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["sh", "start_django.sh"] 

