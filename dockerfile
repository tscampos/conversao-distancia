FROM python:3.8

WORKDIR /app
COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000
# ENTRYPOINT ["python"]
CMD ["gunicorn", "--workers=1", "--bind", "0.0.0.0:5000", "--log-level=info", "app:app"]