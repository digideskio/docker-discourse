# Discourse Docker Image

EnvyGeeks Discourse Docker image is an alternate take on the Discourse
setup allowing external databases and external routers (removal of Nginx) and
not allowing PostgreSQL and Nginx inside of the image itself.

## Security

One should take note and be careful to secure public/backups because
Discourse puts backups inside of that folder (for some reason) and this is a
security hazard, so make sure to block this URL, whether this is routable
I have not checked, but I block it anyways regardless.

## Environment Variables

* `RAILS_ENV=production`
* `UNICORN_SIDEKIQS=1`
* `DISCOURSE_DB_PORT=5432`
* `DISCOURSE_DB_USER="discourse"`
* `DISCOURSE_DB_HOST="postgresql"`
* `DISCOURSE_DB_NAME="discourse"`
* `DISCOURSE_REDIS_HOST="redis"`
* `DISCOURSE_REDIS_PORT=6379`
* `UNICORN_ENABLE_OOBGC=0`
* `UNICORN_WORKERS=2`

One might ask why everything is so low, it's because this is meant to
be a generic image that is meant for a small site that will grow over time
and eventually get scaled, you can send one or all of these environment
variables and override the values to suite your needs!

## Running

* This image recommends: `envygeeks/postgresql` or equiv.
* This image recommends: `envygeeks/nginx` or equiv.

```shell
docker run --name discourse -P \
  --link postgresql:postgresql \
  --link nginx:nginx \
  -dit username/discourse
```
