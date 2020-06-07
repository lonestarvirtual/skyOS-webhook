FROM almir/webhook

COPY --from=library/docker:latest /usr/local/bin/docker /usr/bin/docker
COPY --from=docker/compose:latest /usr/local/bin/docker-compose /usr/bin/docker-compose

RUN  apk --update --upgrade add curl bash && \
     rm -rf /var/cache/apk/*

COPY hooks.json /etc/webhook/hooks.json

CMD ["-hooks=/etc/webhook/hooks.json", "-hotreload", "-verbose"]
