FROM alpine:latest

RUN apk-get update && apk-get install -y python3 python3-pip python3-dev build-essential

WORKDIR /app

COPY src/ /app/src/
COPY src/requirements.txt /app/

RUN pip3 install -r /app/requirements.txt

EXPOSE 5000

CMD ["python3","/app/src/app.py"]




