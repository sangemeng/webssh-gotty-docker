#!/bin/bash
apt update \
&& apt install curl -y \
&& apt clean
#caddy
curl -LJO "https://github.com/caddyserver/caddy/releases/download/v2.1.1/caddy_2.1.1_linux_amd64.tar.gz"
tar -zxvf caddy_2.1.1_linux_amd64.tar.gz
rm caddy_2.1.1_linux_amd64.tar.gz
/caddy start --watch environ --conf /Caddufile
#Gotty
curl -LJO "https://github.com/yudai/gotty/releases/download/v2.0.0-alpha.3/gotty_2.0.0-alpha.3_linux_amd64.tar.gz"
tar -zxvf gotty_2.0.0-alpha.3_linux_amd64.tar.gz
rm gotty_2.0.0-alpha.3_linux_amd64.tar.gz
/gotty -w -p 4200 -c $GottyUser:$GottyPassword /bin/bash