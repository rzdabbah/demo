FROM mysql:8.0
WORKDIR /app/
COPY data.sql .
COPY import_data.sh .

CMD ["sh", "import_data.sh"] 

