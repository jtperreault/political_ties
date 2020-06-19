[![Build Status](https://travis-ci.com/jtperreault/political_ties.svg?branch=primary)](https://travis-ci.com/jtperreault/political_ties)

# Political Ties

A web app that keeps track of politcal ties.

## Requirements
For development you'll need to install a working version of [Docker](https://www.docker.com/products/docker-desktop)
and [Docker Compose](https://docs.docker.com/compose/). Note: they're usually installed together, as one package.

### Setup
With docker installed bring the development services up using the `docker-compose up` command.

#### What gets setup?
Docker will build two containers (as of this writing), one for the Ruby
application running on a `web` server and once for the PostgreSQL `database` it relies on.

#### `web` container info

 - It mounts the host machine's (your computer) filesystem
   starting at the root of the application inside of the container. In this
   way any changes you make on your computer will reflect inside the
   container running the development `web` server.
 - It exposes port 3000 to the host machine (your computer) so that any
   requests made to it get routed to the running container.
 - It, as with all containers, are designed to be ephemeral. If it stops
   working you can throw it away and start a new one with ease.
