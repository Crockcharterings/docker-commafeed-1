FROM ubuntu

ADD ./data /data

RUN groupadd --system commafeed \
	&& useradd --system --gid commafeed commafeed \
	&& chown -R commafeed:commafeed /data

VOLUME /data
USER commafeed
CMD ["echo", "Data container for commafeed"]
