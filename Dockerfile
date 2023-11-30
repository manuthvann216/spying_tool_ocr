FROM python:3.8-slim

ENV FLASK_APP=src.app.py \
    FLASK_ENV=development \
    FLASK_DEBUG=1

WORKDIR /simple_ocr

COPY requirements.txt requirements.txt
COPY . /simple_ocr

RUN pip install --no-cache-dir --no-deps -r requirements.txt && \
    rm -rf /root/.cache

CMD ["flask", "run", "--host=0.0.0.0", "--port=8010"]
