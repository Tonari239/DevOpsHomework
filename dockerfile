FROM alpine:latest

RUN apk add py3-pip

WORKDIR /app

COPY src/ /app/src/
COPY src/requirements.txt /app/

RUN pip3 install -r /app/requirements.txt

EXPOSE 5000

CMD ["python3","/app/src/app.py"]




