# ElasticSearch
This is the elastic search repo for realEstate repo, as a difference microservice.

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