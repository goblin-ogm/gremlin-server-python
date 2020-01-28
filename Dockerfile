FROM tinkerpop/gremlin-server:3.4.4

LABEL maintainer="jeffrey.freeman@syncleus.com"

COPY ./gremlin-server.yaml /opt/gremlin-server/conf/gremlin-server.yaml
RUN cd /opt/gremlin-server && bin/gremlin-server.sh install org.apache.tinkerpop gremlin-python 3.4.4

WORKDIR /opt/gremlin-server

EXPOSE 8182

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["conf/gremlin-server.yaml"]
