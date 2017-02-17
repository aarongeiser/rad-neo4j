FROM neo4j:3.1.1

COPY ./config/neo4j.conf /var/lib/neo4j/conf/neo4j.conf
WORKDIR /var/lib/neo4j

EXPOSE 7474 7473 7687
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["neo4j"]