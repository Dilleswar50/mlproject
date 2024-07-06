FROM python:3.8-alpine

# Install build dependencies
RUN apk add --no-cache \
    gcc \
    musl-dev \
    libffi-dev \
    bash \
    gfortran \
    openblas-dev \
    lapack-dev

COPY . /app
WORKDIR /app
EXPOSE 5000
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["python", "application.py"]