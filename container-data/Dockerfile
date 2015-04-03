from ubuntu

run groupadd -r commafeed \
	&& useradd -r -g commafeed commafeed \
	&& mkdir -p /data \
	&& chown -R commafeed:commafeed /data

volume /data
user commafeed
cmd ["echo", "Data container for commafeed"]
