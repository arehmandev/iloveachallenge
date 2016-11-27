Nginx Traeffik and 2 Go containers

To deploy:

1. Clone this repo

2. If you don't have docker locally, uncomment line 2 of start.sh

3. Run start.sh

4. Add web.abs as a localhost entry in /etc/hosts then browse to http://web.abs or 'curl web.abs'

To destroy:

docker-compose kill

Notes:

This is setup as follows:

Traeffik (Loadbalancer) -> 2x Nginx (web1 and web 2 servers)   --> app1 and app2 via Roundrobin
                                              
