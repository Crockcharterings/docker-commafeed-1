FROM ubuntu

ADD ./data /data

RUN groupadd -r commafeed \
	&& useradd -r -g commafeed commafeed \
	&& mkdir -p /data \
	&& chown -R commafeed:commafeed /data

VOLUME /data
USER commafeed
CMD ["echo", "Data container for commafeed"]
