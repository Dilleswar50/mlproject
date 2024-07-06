FROM python:3.8-alpine
COPY . /app
WORKDIR /app
EXPOSE 5000
RUN pip install -r requirements.txt
CMD ["python", "application.py"]