#!/bin/bash

buster generate --domain=http://127.0.0.1:2368
# chmod 777 static
rsync -a static/* .
rm -rf static



