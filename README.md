# elastic
Make sure this docker compose is in the same network with realEstate
```
docker inspect mongodb -f "{{json .NetworkSettings.Networks }}"
```

