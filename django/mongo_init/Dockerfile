FROM python:3.11-slim
WORKDIR /app/
COPY requirements.txt .
RUN apt-get update
RUN pip install -r requirements.txt
COPY . .
CMD ["python", "import_data.py"] 

