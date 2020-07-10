#!/bin/bash

systemctl stop nginx
certbot certonly  --standalone -d hoffends.jrtechs.net
certbot certonly  --standalone -d github-graphs.com
certbot certonly  --standalone -d www.hoffends.net
certbot certonly  --standalone -d hoffends.net
certbot certonly  --standalone -d jrtechs.me
certbot certonly  --standalone -d video.jrtechs.net
systemctl start nginx

