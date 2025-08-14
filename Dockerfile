FROM python:3.11-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY services/data_loder.py ./services/data_loder.py
COPY services/main.py ./services/main.py


CMD ["python", "-m", "uvicorn", "services.main:app", "--host", "0.0.0.0", "--port", "8080"]