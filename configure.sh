mkdir .flexget
touch /.flexget/config.yml

cat << EOF >>/.flexget/config.yml
web_server:
  bind: 0.0.0.0
  port: ${PORT} #web-ui的监听端口
  web_ui: yes #启用web-ui
  run_v2: yes #启动 V2 版本  
schedules: no

tasks:  
  ob: #任务名称，改冒号前的。
    rss: 
      url: https://google.com
      other_fields:
        - link
    accept_all: yes 
    #content_size: #启用大小过滤
      #max: 9999 # 文件大于 9999M 就不下载
      #strict: no #不要动
    qbittorrent:
      host: 127.0.0.1
      port: 8080
      use_ssl: false
      verify_cert: false
      username: admin
      password: aaaaaaaa
      maxupspeed: 25000
EOF
flexget web passwd "Aaa258369!flexget"
flexget daemon start
