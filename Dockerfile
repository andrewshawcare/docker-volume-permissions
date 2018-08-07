FROM ubuntu

RUN mkdir /tmp/volume && touch /tmp/volume/build-file
VOLUME ["/tmp/volume"]

COPY ./entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]
