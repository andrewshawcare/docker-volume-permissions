FROM ubuntu

RUN apt-get update && apt-get install -y git && apt-get clean

RUN groupadd --gid 1001 user
RUN useradd --uid 1001 --gid 1001 user

RUN mkdir /tmp/volume && touch /tmp/volume/build-file
VOLUME ["/tmp/volume"]

COPY ./entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]
