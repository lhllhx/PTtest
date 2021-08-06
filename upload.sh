#!/bin/bash
cp ~/.flexget/config.yml ~/data
cp ~/.flexget/db-config.sqlite ~/data
cp ~/.flexget/*.log ~/data
cd ~/data
git config --global user.email autobot@github.com
git config --global user.name autobot
git add .
git commit -m "update new data"
git push https://${GITHUB_TOKEN}@github.com/${DATE}.git master
