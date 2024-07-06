FROM python:3.8-slim
COPY . /app
WORKDIR /app
EXPOSE 5000
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["python", "application.py"]
