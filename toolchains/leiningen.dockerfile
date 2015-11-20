FROM zalando/openjdk:8u66-b17-1-2

RUN curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > /usr/local/bin/lein \
        && chmod +x /usr/local/bin/lein

WORKDIR /work
COPY switch-user.sh /switch-user.sh
ENTRYPOINT ["/switch-user.sh"]
