- Run local

```
export FLASK_APP=src.app && export FLASK_ENV=development && flask run
```

- Build docker:

```
docker build --pull --rm -f "Dockerfile" -t simpleocr:latest "."
```

- Run docker:
```
docker run -p 8010:8010 simpleocr:latest
```

Send request:
```
curl --location --request POST 'http://localhost:8000/convert-image-to-json' \
     --header 'Content-Type: application/json' 
     --data-raw '{
        "image_url": "https://www.lolc.com.kh/userfiles/media/lolc.com.kh/table-interest-for-fd-en_4.png"
     }'
```