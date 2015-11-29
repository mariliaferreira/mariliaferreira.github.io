#!/bin/bash

buster generate --domain=http://127.0.0.1:2368
# chmod 777 static
mv static/* .
rm -rf static



