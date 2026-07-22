FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN mkdir -p uploads media

ENV PORT=5000
EXPOSE 5000

CMD ["python", "server.py"]
