FROM alpine:latest

RUN mkdir /app

COPY frontEndApp /app

CMD [ "/app/frontEndApp" ]
