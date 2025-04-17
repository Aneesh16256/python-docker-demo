# Build stage
FROM python:3.9-slim as builder

WORKDIR /app
COPY requirements.txt .

RUN pip install --user -r requirements.txt

# Runtime stage
FROM python:3.9-slim

WORKDIR /app
COPY --from=builder /root/.local /root/.local
COPY app/ .

# Make sure scripts in .local are usable
ENV PATH=/root/.local/bin:$PATH

CMD ["python", "./main.py"]