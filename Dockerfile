FROM python:3.8-slim

ENV FLASK_APP=src.app.py \
    FLASK_ENV=development \
    FLASK_DEBUG=1

WORKDIR /Tabular/opt/app/

COPY requirements.txt requirements.txt
COPY . /Tabular/opt/app/

RUN pip3 install --no-cache-dir --no-deps -r requirements.txt && \
    rm -rf /root/.cache

EXPOSE 8010 

# CMD ["flask", "run", "--host=0.0.0.0", "--port=8010"]
