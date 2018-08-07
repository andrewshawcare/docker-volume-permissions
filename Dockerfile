FROM ubuntu

RUN apt-get update && apt-get install -y git && apt-get clean

RUN groupadd --gid 1000 user
RUN useradd --uid 1000 --gid 1000 user
USER user

RUN mkdir /tmp/volume && touch /tmp/volume/build-file
VOLUME ["/tmp/volume"]

COPY ./entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]
