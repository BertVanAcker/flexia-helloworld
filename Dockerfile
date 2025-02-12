FROM python:3.10
ENV PYTHONUNBUFFERED 1

ADD . c:/src/app
WORKDIR c:/src/app
ENV PYTHONPATH c:/src/app:$PYTHONPATH

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt


CMD ["python3", "app.py"]
