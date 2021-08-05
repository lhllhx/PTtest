date
cd ~/
mkdir .flexget
mkdir data
mkdir .flexget/plugins
git clone https://github.com/lhllhx/flexget_qbittorrent_mod.git ~/.flexget/plugins
cd ./.flexget
touch /.flexget/config.yml
touch /.flexget/db-config.sqlite 
git clone https://${GITHUB_TOKEN}@github.com/${DATE}.git ~/data
cd ~/data
cp -r  ./config.yml ~/.flexget
cp -r  ./db-config.sqlite ~/.flexget
rm -f  db-config.sqlite
rm -f  config.yml
rm -f  *.log
cd ~/.flexget
sed -i "s/waitforenv/${PORT}/g" config.yml
cat config.yml
cd ~/
flexget web passwd "${PASSWORD}"
flexget daemon start 
