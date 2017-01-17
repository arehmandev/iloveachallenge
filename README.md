# Traeffik loadbalancing 2 Nginx webservers, connected to 2 Go application containers

##Prerequisites:
- docker
- docker-compose

##To deploy:
```
1. Clone this repo
2. Run docker-compose build && docker-compose up -d
4. Add web.abs as a localhost entry in /etc/hosts then browse to http://web.abs or 'curl web.abs'
```
To destroy:
```
docker-compose kill
```

#Notes:

This is setup as follows:

Traeffik (Loadbalancer) -> 2x Nginx (web1 and web 2 servers)   --> app1 and app2 via Roundrobin
