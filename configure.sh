mkdir .flexget
touch /.flexget/config.yml

cat << EOF >>/.flexget/config.yml
web_server:
  bind: 0.0.0.0
  port: 443 #web-ui的监听端口
  web_ui: yes #启用web-ui
  run_v2: yes #启动 V2 版本  
schedules: no

EOF
flexget web passwd "Aaa123456"
flexget daemon start
