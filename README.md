# Discourse Docker Image

EnvyGeeks Discourse Docker image is an alternate take on the Discourse
setup allowing external databases and external routers (removal of Nginx) and
not allowing PostgreSQL and Nginx inside of the image itself.

## Security

One should take note and becareful to secure public/backups because
Discourse puts backups inside of that folder (for some reason) and this is a
security hazard, so make sure to block this URL.

## Running

* This image recommends: `envygeeks/postgresql` or equiv.
* This image recommends: `envygeeks/nginx` or equiv.

```shell
docker run --name discourse -P \
  --link postgresql:postgresql` --link nginx:nginx \
  -dit username/discourse
```
