# Basic local searxng docker

- Official source code: [searxng](https://github.com/searxng/searxng)
- Official docker source code : [searxng-docker](https://github.com/searxng/searxng-docker)

## Quick start

change workdir in `searxng-update` && `searxng-dockerservice.tmpl`


```bash
$ docker compose up -d && docker compose down --remove-orphans # boot up containers
$ sudo cp searxng-docker.service.tmpl /etc/systemd/system/searxng-docker.service #start docker on boot
$ systemctl daemon-reload
$ systemctl enable searxng-docker.service
$ systemctl start searxng-docker.service
$ edge.exe http://localhost:2854 # your favorite browser
```

## cron update job

```bash
$ sudo cp searxng-update /usr/local/bin
$ sudo crontab -e # then paste =>  @weekly /usr/local/bin/searxng-update

```
`
