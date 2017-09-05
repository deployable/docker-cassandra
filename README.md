# Cassandra Cluster Docker Compose Definition

A simple cassandra single data centre, single rack cluster

Bring up the first server

```
docker-compose up -d cassandra-1
docker-compose logs -f cassandra-1
```

Bring up the nodes
```
docker-compose up -d cassandra-2
docker-compose up -d cassandra-3 cassandra-4
```

Test the cluster
```
cqlsh -f test.cql
```

