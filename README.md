# ElasticSearch
This is the elastic search repo for realEstate repo, as a difference microservice.
```
~ ❯ curl -u elastic:password -k https://localhost:9200                                                        
{
  "name" : "es01",
  "cluster_name" : "elastic-cluster",
  "cluster_uuid" : "0TQLjSYQSEyJ3pUWOforlg",
  "version" : {
    "number" : "8.12.2",
    "build_flavor" : "default",
    "build_type" : "docker",
    "build_hash" : "48a287ab9497e852de30327444b0809e55d46466",
    "build_date" : "2024-02-19T10:04:32.774273190Z",
    "build_snapshot" : false,
    "lucene_version" : "9.9.2",
    "minimum_wire_compatibility_version" : "7.17.0",
    "minimum_index_compatibility_version" : "7.0.0"
  },
  "tagline" : "You Know, for Search"
}
```


# Start
## How to run this?
```
docker compose down --volumes && docker compose up --build -d
```

After started, go to localhost:5601 with:
```
user: elastic
password: password
```

## How to check on Kibana?
Use this query to see the DB is loaded or not:
```
GET suumo-xxxx.xx.xx/_search
{
  "query": {
    "match_all": {}
  }
}
```

## Note
Make sure this docker compose is in the same network with realEstate
```
docker inspect es01 -f "{{json .NetworkSettings.Networks }}"
```
