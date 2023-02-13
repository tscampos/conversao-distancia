FROM python:3.8

WORKDIR /app1
COPY . .

RUN pip install -r requirements.txt

ENTRYPOINT ["phyton"]
CMD ["app.py"]