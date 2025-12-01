FROM public.ecr.aws/docker/library/python:3.10-slim

WORKDIR /app
COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 80

CMD ["gunicorn", "-b", "0.0.0.0:80", "app:app"]
