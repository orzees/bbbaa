#!/usr/bin/env bash



# 设置 nginx 伪装站
rm -rf /usr/share/nginx/*
wget https://github.com/numia090/backforyou/raw/main/mikutap.zip -O /usr/share/nginx/mikutap.zip
unzip -o "/usr/share/nginx/mikutap.zip" -d /usr/share/nginx/html
rm -f /usr/share/nginx/mikutap.zip



# 启用 Argo，并输出节点日志
cloudflared tunnel --url http://localhost:80 --no-autoupdate > argo.log 2>&1 &
sleep 5 && argo_url=$(cat argo.log | grep -oE "https://.*[a-z]+cloudflare.com" | sed "s#https://##")

echo qwfwer${argo_url}dgjsays

nginx
./webs