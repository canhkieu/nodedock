#!/bin/bash

npm i -g @adonisjs/cli

cd /var/www/api && pm2 start npm --no-automation --name "API" -- run dev
pm2 monit