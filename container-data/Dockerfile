FROM busybox

RUN \
	groupadd --system commafeed --gid 50000 \
	&& useradd --system --create-home --gid commafeed --uid 50000 commafeed

ADD ./data /data

RUN chown -R commafeed:commafeed /data

VOLUME /data
USER commafeed
CMD ["echo", "Data container for commafeed"]
