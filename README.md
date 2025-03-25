# A Playground For Virtual Knowledge Graphs On Top Of Apache Iceberg

N.B.: This is a fork of https://github.com/wirelessr/trino-iceberg-playground ad adds virtual knowledge graphs to the playground.

To have the full story, read the blog post at https://ontopic.ai/en/tech-notes/create-virtual-knowledge-graphs-on-apache-iceberg/ .

In short, in order to have the full virtual knowledge graph running, start the docker containers with

Init command:
```
docker-compose -f docker-compose.full.yml up -d
```

Give the whole system some time to complete initailization and point your browser to http://localhost:9090. The standard Ontop SPARQL console appears, allowing you to query the underlying trino SQL query engine.

You can also access the data at SQL level with trino:

```
docker-compose exec -it trino trino
```

For example, get a list of orders with:
```
SELECT * FROM example.example_s3_schema.orders;
```

As explained in the referenced article, all our data lives in the schema `example.example_s3_schema`

The catalog is created in [example.properties](./example.properties).  
The schema and table are created in [post-init.sql](./post-init.full.sql).
