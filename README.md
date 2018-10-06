# docker-rq

## rq ?

see http://python-rq.org/

## how

run redis server container

``` bash
$ cd docker-rq/server
$ docker build -t rq-server .
$ docker run --name server -d rq-server
```

run worker container

``` bash
$ cd docker-rq/worker
$ docker build -t rq-worker .
$ docker run --link server:db --name worker -d rq-worker
```

run dashboard container

``` bash
$ cd docker-rq/dashboard
$ docker build -t rq-dashboard .
$ docker run --link server:db -9 9181:9181 --name dashboard -d rq-dashboard
```
